#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout $1


echo "1=$1"
SUBJECT=$(echo "$1" | sed -e "s/\(feat\|bugfix\)\\///g")
echo "SUBJECT=$SUBJECT"
BRANCH_TYPE=$(echo "$1" | sed -e "s/\(feat\|bugfix\)\\/.*/\1/g")
echo "BRANCH_TYPE=$BRANCH_TYPE"

# ------------
echo "$1 - $2 - some text" >> $SUBJECT-file.txt


# ------------
git add .


# ------------
git commit -m"$BRANCH_TYPE($SUBJECT): $2"
