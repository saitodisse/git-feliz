#!/bin/bash
set -o verbose
cd ./scripts/

SLEEP=1

# rebasing makes git tree beautiful again

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-1"; fi;

./common/change-user.sh "Obama"
./feat/start.sh            feat/feature-1
./feat/commit.sh           feat/feature-1 line-1
./feat/commit.sh           feat/feature-1 line-2
./feat/commit.sh           feat/feature-1 line-3

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... fix-1"; fi;
./common/change-user.sh "Fixer"
./feat/start.sh            bugfix/fix-1
./feat/commit.sh           bugfix/fix-1 fix-1-line-1
./feat/commit.sh           bugfix/fix-1 fix-1-line-2
./feat/commit.sh           bugfix/fix-1 fix-1-line-3

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge fix-1 to master"; fi;
# REBASE and MERGE
./common/rebase-from-branch.sh   bugfix/fix-1 master
./common/merge-to-branch.sh  bugfix/fix-1 master

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-2"; fi;
./common/change-user.sh "Donald"
./feat/start.sh            feat/feature-2
./feat/commit.sh           feat/feature-2 line-1
./feat/commit.sh           feat/feature-2 line-2
./feat/commit.sh           feat/feature-2 line-3

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... fix-2"; fi;
./common/change-user.sh "Fixer"
./feat/start.sh            bugfix/fix-2
./feat/commit.sh           bugfix/fix-2 fix-2-line-1
./feat/commit.sh           bugfix/fix-2 fix-2-line-2
./feat/commit.sh           bugfix/fix-2 fix-2-line-3

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge fix-2 to master"; fi;
# REBASE and MERGE
./common/rebase-from-branch.sh   bugfix/fix-2 master
./common/merge-to-branch.sh  bugfix/fix-2 master

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... new branch release-v0.1.0 from master"; fi;
./common/change-user.sh "Releaser"
./common/new-branch-from.sh release-v0.1.0 master

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... include feature-1 on release-v0.1.0"; fi;
./common/change-user.sh "Obama"

# REBASE and MERGE
./common/rebase-from-branch.sh   feat/feature-1 release-v0.1.0
./common/merge-to-branch.sh  feat/feature-1 release-v0.1.0

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... include feature-2 on release-v0.1.0"; fi;
./common/change-user.sh "Donald"

# REBASE and MERGE
./common/rebase-from-branch.sh   feat/feature-2 release-v0.1.0
./common/merge-to-branch.sh  feat/feature-2 release-v0.1.0

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... fix-3"; fi;
./common/change-user.sh "Fixer"
./feat/start.sh            bugfix/fix-3
./feat/commit.sh           bugfix/fix-3 fix-3-line-1
./feat/commit.sh           bugfix/fix-3 fix-3-line-2
./feat/commit.sh           bugfix/fix-3 fix-3-line-3

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge fix-3 to master"; fi;
# REBASE and MERGE
./common/rebase-from-branch.sh   bugfix/fix-3 master
./common/merge-to-branch.sh  bugfix/fix-3 master

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase release-v0.1.0 on master"; fi;
./common/change-user.sh "Releaser"
./common/rebase-from-branch.sh   release-v0.1.0 master

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge release-v0.1.0 to master"; fi;
./common/merge-to-branch.sh  release-v0.1.0 master

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... delete branches"; fi;
./common/delete-branch.sh  bugfix/fix-1
./common/delete-branch.sh  bugfix/fix-2
./common/delete-branch.sh  bugfix/fix-3
./common/delete-branch.sh  feat/feature-1
./common/delete-branch.sh  feat/feature-2
./common/delete-branch.sh  release-v0.1.0

./common/status.sh

#!/bin/bash
set -o verbose
