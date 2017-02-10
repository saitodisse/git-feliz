## ------------
## Simulando conflito

# AUTO MERGING -----------------

# maria
git checkout master
vim arquivo.txt && git add . && git commit -m"linha 2 alterada"

# julio
git checkout master
vim arquivo.txt && git add . && git commit -m"linha 4 alterada"


# maria
git push origin master



# MERGE -----------------
# julio
git pull



# REBASE --------------

# maria - volta o servidor para ter apenas o commit dela
git push -f

# julio
git checkout -b branch-to-rebase
git pull --rebase

# vamos comparar o SHA do "master" e do "branch-to-rebase"
# podemos ver que o commit do julio foi reconstruído
git log --all --graph

# agora como eu faço pra mandar para o servidor, fiz o rebase na branch?
# basta apontar forçadamente com "git reset"
git checkout master
git log --all --graph
git reset XXXXXXX --hard
