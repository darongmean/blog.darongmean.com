---
comments: true
date: 2017-11-26T00:00:00Z
keywords: git, delete, files
title: Git - working with deleted files
url: /git-working-with-deleted-files
---

Scenario: you notice that a file is deleted and you want to recover it.

## Find which commit delete the file

```bash
git log -- docroot/user_bars/logo.png   # show all changes of a file, work even if the file is deleted  
git log -1 -- docroot/user_bars/logo.png # limit the output of Git log to the last commit, i.e. the commit which delete the file; -1 to see only the last commit, use -2 to see the last 2 commits etc...
```

## Restore the file

```bash
git checkout f5ac172e docroot/user_bars/logo.png # warn: this will discard all changes in working directory
```

If there are many revisions, you can view content of the file in a specific revision by the following command:
```bash
git show f5ac172e docroot/user_bars/logo.png
```