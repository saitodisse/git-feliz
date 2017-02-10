#!/bin/bash
set -o verbose
cd ./scripts/

SLEEP=$1

# squash is an advanced technique

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh

./common/change-user.sh "Obama"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-1"; fi;
./feat/start.sh            feat/feature-1
./feat/commit.sh           feat/feature-1 line-1
./feat/commit.sh           feat/feature-1 line-2
./feat/commit.sh           feat/feature-1 line-3

./common/change-user.sh "Donald"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-2"; fi;
./feat/start.sh            feat/feature-2
./feat/commit.sh           feat/feature-2 line-1
./feat/commit.sh           feat/feature-2 line-2
./feat/commit.sh           feat/feature-2 line-3

./common/change-user.sh "Obama"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... squash feature-1"; fi;
./common/squash-and-preserve-messages.sh feat/feature-1 3
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase feature-1"; fi;
./feat/rebase-from-master.sh feat/feature-1
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge feature-1"; fi;
./feat/merge-to-master.sh  feat/feature-1

./common/change-user.sh "Donald"
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... squash feature-2"; fi;
./common/squash-and-preserve-messages.sh feat/feature-2 3
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase feature-2"; fi;
./feat/rebase-from-master.sh feat/feature-2
if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merge feature-3"; fi;
./feat/merge-to-master.sh  feat/feature-2

./common/status.sh


#!/bin/bash
set -o verbose
