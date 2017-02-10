###
# Juntando vários commits em 1
# via git reset
###

cat arquivo.txt

git checkout -b 'gitReset'

echo " - new linha 5 (não compila)" >> arquivo.txt;   git add .;     git commit -m"WIP linha 5 - não compila"
echo " - new linha 6 (não compila)" >> arquivo.txt;   git add .;     git commit -m"WIP linha 6 - não compila"
echo " - new linha 7 (tem um bug)"  >> arquivo.txt;   git add .;     git commit -m"WIP linha 7 - tem um bug"
echo " - new linha 8 (OK)"          >> arquivo.txt;   git add .;     git commit -m"linha 8 - tudo OK"

git log --all --graph


# 1. na mesma branch
git reset HEAD~4
cat arquivo.txt
git add .
git commit -m"todos juntos"

# UNDO!
git reflog
git reset XXXXXXXXXX --hard

# 2. criar um branch antes
# Se quiser pode sempre criar uma branch antes de fazer coisas "destrutivas"
git checkout -b gitReset--juntando-em-um-commit
git log --all --graph

git reset XXXXXXXXXX
git add .
git commit -m"todos juntos"
git log --all --graph

git checkout gitReset
git reset XXXXXXXXXX --hard

git log --all --graph

