#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo-rebase


# ------------
git checkout -b feat/$1 master


# ------------
echo 'linha 1' > $1.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat($1): $1 seq(1)"


# ------------
echo 'linha 2' >> $1.txt

# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat($1): $1 seq(2)"


# ------------
git log --graph --oneline


# ------------
echo 'linha 3' >> $1.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat($1): $1 seq(3)"


# ------------
# squash all (http://stackoverflow.com/a/5201642/66428)
git reset --soft HEAD~3 &&


# ------------
git commit -m"$(git log --format=%B --reverse HEAD..HEAD@{1})"


# ------------
git checkout master


# ------------
git merge feat/$1 -m"MERGE: feat/$1 -> master" --ff-only


# ------------
# remove a branch de "feat"
git branch -d feat/$1


# ------------
git branch --all


# ------------
git log master --graph --oneline

