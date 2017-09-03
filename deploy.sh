#!/bin/bash

github_repo=git@github.com:darongmean/darongmean.github.io.git
rootDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
build_dest=$rootDir/public
hugo=$rootDir/bin/linux/0.26/hugo

echo "git clone $github_repo $build_dest"
git clone $github_repo $build_dest

echo "HUGO_ENV=production $hugo -v"
HUGO_ENV=production $hugo -v

echo "cd $build_dest"
cd $build_dest

echo "git add -fA"
git add -fA

echo 'git commit --allow-empty -m Update at $(TZ=":Asia/Phnom_Penh" date -Iseconds)'
git commit --allow-empty -m "Update at $(TZ=":Asia/Phnom_Penh" date -Iseconds)"

echo "git push -f origin master"
git push -f origin master
