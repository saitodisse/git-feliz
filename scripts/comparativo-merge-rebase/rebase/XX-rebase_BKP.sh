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
# 1) Adiciona um commit ao master

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3' >> arquivo.txt
echo 'linha 4' >> arquivo.txt

# ------------
git status


# ------------
git add .


# ------------
git commit -m"primeiro commit"


# ------------
git log --graph --oneline





# ------------
# 2) Cria Feature


# ------------
git checkout -b dev master


# ------------
git checkout -b feat/nova-funcionalidade dev


# ------------
echo 'linha 1' > nova-funcionalidade.txt
echo 'linha 2' >> nova-funcionalidade.txt
echo 'linha 3' >> nova-funcionalidade.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat(Nova): 1 Nova Funcionalidade"


# ------------
echo 'linha 4' >> nova-funcionalidade.txt

# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat(Nova): 2 Nova Funcionalidade"


# ------------
git log --graph --oneline






# ------------
# 3) Corrige erro no master


# ------------
git checkout -b fix/corrige-erro master


# ------------
echo 'linha 5 - erro corrigido' >> arquivo.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Fix:(Principal) corrige erro"


# ------------
# faz merge da correção no MASTER
git checkout master
git merge fix/corrige-erro


# ------------
# faz rebase do master em DEV
git checkout dev
git rebase master


# ------------
# apaga branch que não é mais útil
git branch -d fix/corrige-erro


# ------------
git log --graph --oneline






# ------------
# 4) Finaliza Feature



# ------------
git checkout feat/nova-funcionalidade


# ------------
# faz rebase
git rebase dev


# ------------
echo 'linha 5 - FIM' >> nova-funcionalidade.txt


# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat(Nova): 3 Nova Funcionalidade finalizada"


# ------------
git checkout dev


# ------------
git merge feat/nova-funcionalidade --no-ff -m"MERGE: feat/nova-funcionalidade -> dev"


# ------------
# remove a branch de "feat"
git branch -d feat/nova-funcionalidade





# ------------
# merge "dev" pro "master"
git checkout master

# ------------
git merge dev --no-ff -m"MERGE: rebase dev -> master"



# ------------
git branch --all


# ------------
git log dev --graph --oneline


# ------------
git log master --graph --oneline

