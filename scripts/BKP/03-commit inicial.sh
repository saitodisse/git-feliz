echo 'linha 1' > arquivo.txt
echo 'linha 2' >> arquivo.txt
echo 'linha 3' >> arquivo.txt
echo 'linha 4' >> arquivo.txt

git status
git add .
git commit -m"primeiro commit"
git push origin master -u

git log
