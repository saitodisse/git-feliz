#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout $1


# squash all (http://stackoverflow.com/a/5201642/66428)
git reset --soft HEAD~$2 &&


# ------------
git commit -m"$(git log --format=%B --reverse HEAD..HEAD@{1})"
