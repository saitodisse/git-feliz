#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo-rebase


# ------------
# 3) Corrige erro em master pra jogar pra prod / certificacao


# ------------
git checkout -b fix/$1 master


# ------------
echo "linha 5 - $1" >> arquivo.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Fix:(Assunto) $1"


# ------------
# merge FF master
git checkout master


# ------------
git merge fix/$1


# ------------
# merge FF prod
git checkout prod


# ------------
# essa parte é delicada
# pode ser uma boa fazer cherry-pick em vez de merge caso não possa ir pra produção
# com alguma feature nova
git merge master



# ------------
# apaga branch que não é mais útil
git branch -d fix/$1


# ------------
git log prod --graph --oneline


# ------------
git log master --graph --oneline


