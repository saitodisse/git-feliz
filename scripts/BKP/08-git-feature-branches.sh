## ------------
## JULIO
# branch: feat/linha-3-e-4
git checkout -b feat/linha-3-e-4

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3 melhor' >> arquivo.txt
echo 'linha 4 melhor' >> arquivo.txt

git add .
git commit -m"Feat(linha-3-e-4): deixando o a linha 3 e 4 melhores"

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3 melhor ainda' >> arquivo.txt
echo 'linha 4 melhor' >> arquivo.txt

git add .
git commit -m"Feat(linha-3-e-4): linha 3 ainda melhor"




## ------------
## Maria corrige bug fix
# branch: bugfix/corrige-linha-3
git checkout -b bugfix/corrige-linha-3

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3 alterada 1' >> arquivo.txt
echo 'linha 4' >> arquivo.txt
git add .
git commit -m"Fix(corrige-linha-3): WIP: corrigindo linha 3"

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3 alterada 2' >> arquivo.txt
echo 'linha 4' >> arquivo.txt
git add .
git commit -m"Fix(corrige-linha-3): WIP: corrigindo linha 3 de novo"

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3 corrigida' >> arquivo.txt
echo 'linha 4' >> arquivo.txt
git add .
git commit -m"Fix(corrige-linha-3): linha 3 OK"

git push origin bugfix/corrige-linha-3





## ------------
## JULIO
# branch: feat/linha-3-e-4

echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3 melhor ainda' >> arquivo.txt
echo 'linha 4 incrível' >> arquivo.txt

git add .
git commit -m"Feat(linha-3-e-4): linha 4 incrível"




## ------------
## Maria faz merge com master (era mesmo urgentíssimo)
# branch: bugfix/corrige-linha-3

git checkout master
git merge bugfix/corrige-linha-3
git push origin master





## ------------
## JULIO: vamos ver se o meu master continua atualizado
# branch: feat/linha-3-e-4


git checkout master
git pull origin master

# !opa, tivemos uma alteração
git log --all --graph

git checkout feat/linha-3-e-4

# -- MERGE (simples, feio)
git merge master


# -- REBASE (avançado, estético)
git rebase master


# CONFLICT (content): Merge conflict in arquivo.txt
# corrigir pelo editor
# corrigir pelo smartgit

git add .
git rebase --continue

git log --all --graph


## Pra finalizar vamos jogar para o master
git checkout master
git merge feat/linha-3-e-4
