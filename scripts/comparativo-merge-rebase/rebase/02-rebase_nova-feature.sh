#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo-rebase


# ------------
git checkout -b feat/$1 master


# ------------
echo 'linha 1' > $1.txt
echo 'linha 2' >> $1.txt
echo 'linha 3' >> $1.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat($1): 1 $1"


# ------------
echo 'linha 4' >> $1.txt

# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat($1): 2 $1"


# ------------
git log --graph --oneline


# ------------
# 4) Finaliza Feature

# ------------
git checkout feat/$1


# ------------
echo 'linha 5 - FIM' >> $1.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat($1): 3 $1 finalizada"


# ------------
git checkout master


# ------------
git merge feat/$1 --no-ff -m"MERGE: feat/$1 -> master"


# ------------
# remove a branch de "feat"
git branch -d feat/$1


# ------------
git branch --all


# ------------
git log master --graph --oneline


# ------------
git log master --graph --oneline

