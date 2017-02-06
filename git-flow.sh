# cria branch develop

git branch develop
git push -u origin develop

# clona

git clone ssh://user@host/path/to/repo.git
git checkout -b develop origin/develop

# nova feature

git checkout -b some-feature develop

git status
git add <some-file>
git commit

git pull origin develop
git checkout develop
git merge some-feature
git push
git branch -d some-feature

# novo release

git checkout -b release-0.1 develop

# release fim: merge master e develop

git checkout master
git merge release-0.1
git push
git checkout develop
git merge release-0.1
git push
git branch -d release-0.1

# cria tag de identificação

git tag -a 0.1 -m "Initial public release" master
git push --tags


# correção de bug em produção(master)

git checkout -b issue-#001 master
# Fix the bug
git checkout master
git merge issue-#001
git push

git checkout develop
git merge issue-#001
git push
git branch -d issue-#001
