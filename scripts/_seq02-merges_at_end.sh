#!/bin/bash
set -o verbose
cd ./scripts/

SLEEP=$1

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-1"; fi;
./common/change-user.sh "Obama"
./feat/start.sh           feat/feature-1
./feat/commit.sh          feat/feature-1 line-1
./feat/commit.sh          feat/feature-1 line-2
./feat/commit.sh          feat/feature-1 line-3

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... feature-2"; fi;
./common/change-user.sh "Donald"
./feat/start.sh           feat/feature-2
./feat/commit.sh          feat/feature-2 line-1
./feat/commit.sh          feat/feature-2 line-2
./feat/commit.sh          feat/feature-2 line-3

./common/status.sh

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... merging"; fi;
./common/change-user.sh "MergerMaster"
./feat/merge-to-master.sh feat/feature-1
./feat/merge-to-master.sh feat/feature-2

./common/status.sh
