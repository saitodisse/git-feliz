#!/bin/bash
set -o verbose
cd ./scripts/

SLEEP=$1

# Even with this ideal sequence
# only merging without rebase make an ugly git tree

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh

./common/change-user.sh "Obama"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-1"; fi;
./feat/start.sh            feat/feature-1
./feat/commit.sh           feat/feature-1 line-1
./feat/commit.sh           feat/feature-1 line-2
./feat/commit.sh           feat/feature-1 line-3

./common/change-user.sh "Fixer"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... fix-1"; fi;
./feat/start.sh            bugfix/fix-1
./feat/commit.sh           bugfix/fix-1 fix-1-line-1
./feat/commit.sh           bugfix/fix-1 fix-1-line-2
./feat/commit.sh           bugfix/fix-1 fix-1-line-3
./common/merge-to-branch.sh  bugfix/fix-1 master

./common/change-user.sh "Donald"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-2"; fi;
./feat/start.sh            feat/feature-2
./feat/commit.sh           feat/feature-2 line-1
./feat/commit.sh           feat/feature-2 line-2
./feat/commit.sh           feat/feature-2 line-3

./common/change-user.sh "Fixer"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... fix-2"; fi;
./feat/start.sh            bugfix/fix-2
./feat/commit.sh           bugfix/fix-2 fix-2-line-1
./feat/commit.sh           bugfix/fix-2 fix-2-line-2
./feat/commit.sh           bugfix/fix-2 fix-2-line-3
./common/merge-to-branch.sh  bugfix/fix-2 master

./common/change-user.sh "Releaser"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... master"; fi;
./common/new-branch-from.sh release-v0.1.0 master

./common/change-user.sh "Obama"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge feature-1 to release-v0.1.0"; fi;
./common/merge-to-branch.sh  feat/feature-1 release-v0.1.0

./common/change-user.sh "Donald"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge feature-2 to release-v0.1.0"; fi;
./common/merge-to-branch.sh  feat/feature-2 release-v0.1.0

./common/change-user.sh "Fixer"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... fix-3"; fi;
./feat/start.sh            bugfix/fix-3
./feat/commit.sh           bugfix/fix-3 fix-3-line-1
./feat/commit.sh           bugfix/fix-3 fix-3-line-2
./feat/commit.sh           bugfix/fix-3 fix-3-line-3
./common/merge-to-branch.sh  bugfix/fix-3 master

./common/change-user.sh "Releaser"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge release-v0.1.0 to master"; fi;
./common/merge-to-branch.sh  release-v0.1.0 master

./common/status.sh

#!/bin/bash
set -o verbose
