echo 'nova linha 5' >> arquivo.txt
# "Modified"
git status

git add arquivo.txt
# "Staged"
git status

echo 'nova linha 6' >> arquivo.txt
# "Staged Modified" - dois estados (tá doido)
git status
git diff
git diff --cached
git diff HEAD

git add arquivo.txt
git status
git diff
git diff --cached

git commit -m"salva assim mesmo"

git status
git log --all --graph
