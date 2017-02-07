#!/bin/bash
set -o verbose


# ------------
rm -rf /tmp/new-repo-rebase
mkdir /tmp/new-repo-rebase
cd /tmp/new-repo-rebase



# ------------
# novo repositório
git init



# ------------
# Adiciona primeiro commit ao master
echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3' >> arquivo.txt
echo 'linha 4' >> arquivo.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Versão inicial"


# ------------
# branch: prod
git checkout -b prod master


# ------------
git checkout master


# ------------
git log --graph --oneline
