#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo-rebase


# ------------
# 3) Corrige erro em prod


# ------------
git checkout -b fix/$1 prod


# ------------
echo 'linha 5 - $1' >> arquivo.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Fix:(prod) corrige erro"


# ------------
# faz merge da correção no prod
git checkout prod
git merge fix/$1


# ------------
# faz rebase do prod em DEV
git checkout master
git rebase prod


# ------------
# apaga branch que não é mais útil
git branch -d fix/$1


# ------------
git log prod --graph --oneline


# ------------
git log master --graph --oneline


