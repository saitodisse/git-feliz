#!/bin/bash
set -o verbose

# ------------
rm -rf /tmp/new-repo-merge
mkdir /tmp/new-repo-merge
cd /tmp/new-repo-merge

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
# faz merge da correção MASTER
git checkout master
git merge fix/corrige-erro -m"Merge fix/corrige-erro -> master"


# ------------
# faz merge da correção DEV
git checkout dev
git merge fix/corrige-erro -m"Merge fix/corrige-erro -> dev"


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
echo 'linha 5 - FIM' >> nova-funcionalidade.txt

# ------------
git status


# ------------
git add .


# ------------
git commit -m"Feat(Nova): 3 Nova Funcionalidade finalizada"



# ------------
# merge "feat" para "dev"
git checkout dev

# ------------
git merge feat/nova-funcionalidade -m"Merge feat/nova-funcionalidade -> dev"



# ------------
# remove a branch de "feat"
git branch -d feat/nova-funcionalidade





# ------------
# merge "dev" para "master"
git checkout master

# ------------
git merge dev -m"Merge dev -> master"



# ------------
git branch --all


# ------------
git log master --graph --oneline


# ------------
git log dev --graph --oneline
