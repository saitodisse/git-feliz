#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout $1


# ------------
echo "$1 - $2 - some text" >> `echo "$1" | sed -e "s/feat\\///g"`-file.txt


# ------------
git add .


# ------------
git commit -m"Feat($1): $2"
