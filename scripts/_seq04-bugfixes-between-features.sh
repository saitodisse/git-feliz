#!/bin/bash
set -o verbose
cd ./scripts/

SLEEP=$1

# In this ilusional example all change are made in a sync mode
# Next examples are more "real"

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-1"; fi;
./common/change-user.sh "Obama"
./feat/start.sh            feat/feature-1
./feat/commit.sh           feat/feature-1 line-1
./feat/commit.sh           feat/feature-1 line-2
./feat/commit.sh           feat/feature-1 line-3

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... bugfix-01"; fi;
./common/change-user.sh "Fixer"
./feat/start.sh            bugfix/fix-1
./feat/commit.sh           bugfix/fix-1 fix-1-line-1
./feat/commit.sh           bugfix/fix-1 fix-1-line-2
./feat/commit.sh           bugfix/fix-1 fix-1-line-3
./feat/merge-to-master.sh  bugfix/fix-1

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-2"; fi;
./common/change-user.sh "Donald"
./feat/start.sh            feat/feature-2
./feat/commit.sh           feat/feature-2 line-1
./feat/commit.sh           feat/feature-2 line-2
./feat/commit.sh           feat/feature-2 line-3

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... bugfix-02"; fi;
./common/change-user.sh "Fixer"
./feat/start.sh            bugfix/fix-2
./feat/commit.sh           bugfix/fix-2 fix-2-line-1
./feat/commit.sh           bugfix/fix-2 fix-2-line-2
./feat/commit.sh           bugfix/fix-2 fix-2-line-3
./feat/merge-to-master.sh  bugfix/fix-2

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge feature-1"; fi;
./common/change-user.sh "Obama"
./feat/merge-to-master.sh  feat/feature-1

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge feature-2"; fi;
./common/change-user.sh "Donald"
./feat/merge-to-master.sh  feat/feature-2

./common/status.sh


#!/bin/bash
set -o verbose
