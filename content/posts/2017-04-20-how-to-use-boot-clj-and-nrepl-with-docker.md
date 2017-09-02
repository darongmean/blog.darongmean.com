---
comments: true
date: 2017-04-20T00:00:00Z
keywords: boot-clj, docker, nrepl, cljs-repl
title: How to use boot-clj and nREPL with Docker
url: /2017/04/20/how-to-use-boot-clj-and-nrepl-with-docker/
---

There's a great post about [using clojure with docker.](http://blog.dominic.io/vagrant-docker-and-clojure/) I followed the post with a twist. I used `boot-alpine` image[[^1]] and `docker-compose` instead of `Vagrant`.

Here's the final configuration that worked.

- file `build.boot`
```clojure
; file build.boot
(deftask development []
  (task-options!
    cljs {:optimizations    :none
          :source-map       true
          :compiler-options {:devcards true}}
    start-repl {:ip "0.0.0.0" :port 9007}
    cljs-repl {:nrepl-opts {:bind "0.0.0.0" :port 9009}}
    reload {:on-jsload 'timer.app/reload
            :port      9011}
    serve {:port 3000})
  identity)
```
- file `docker-compose.yml`
```yaml
# file docker-compose.yml
version: '2'
services:
  bootclj:
    command: boot dev
    image: clojure:boot-alpine
    ports:
      - 9007:9007
      - 9009:9009
      - 9011:9011
      - 3000:3000
    volumes_from:
      - m2
    working_dir: /opt/src
  m2:
    command: echo "m2 container ready!"
    image: alpine
    volumes:
      - /root/.m2
      - ./:/opt/src
```

### Challenges I faced

Being a beginner in both boot-clj and Docker, I bumped into the following issues.

- I couldn't connect to nREPL running in Docker[[^2]].

I got the following error when I used Cursive remote repl to connect.
```
Connecting to remote nREPL server...
Error connecting to localhost:9009 - class java.net.ConnectException: Connection refused
```
By going through document and looking at the source code[[^3]], I found out that I need to run two tasks to have browser repl working. The task `cljs-repl` starts a repl server and the task `start-repl` connects the repl server to browser. 

The repl server listens to loopback interface[[^4]] by default. I used the `bind` nrepl option to override this setting like the following:
```clojure
cljs-repl {:nrepl-opts {:bind "0.0.0.0" :port 9009}}
```

- Boot downloaded dependencies everytime I rebuilt docker images.

I used data container to store `.m2` repositories. I just use the following command to rebuild and start the image:
```bash
docker-compose stop bootclj 
docker-compose rm bootclj
docker-compose create bootclj
docker-compose start bootclj
```

---
Footnote:

[^1]: 1: [link to official Docker image for Clojure](https://hub.docker.com/_/clojure/)
[^2]: 2: `adzerk/boot-cljs-repl` version `0.3.3` is used in this post
[^3]: 3: [boot_cljs_repl.clj](https://github.com/adzerk-oss/boot-cljs-repl/blob/master/src/adzerk/boot_cljs_repl.clj#L204) and [built_in.clj](https://github.com/boot-clj/boot/blob/2.6.0/boot/core/src/boot/task/built_in.clj#L371)
[^4]: 4: [https://clojure.org/reference/repl_and_main#_launching_a_socket_server](https://clojure.org/reference/repl_and_main#_launching_a_socket_server)
