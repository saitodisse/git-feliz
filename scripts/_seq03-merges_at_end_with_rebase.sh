#!/bin/bash
set -o verbose
cd ./scripts/

# with a git rebase all commits stay on the same master line

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh                           ;sleep 1

./common/change-user.sh "Obama"
./feat/start.sh            feat/feature-01
./feat/commit.sh           feat/feature-01 line-1  ;sleep 1
./feat/commit.sh           feat/feature-01 line-2  ;sleep 1
./feat/commit.sh           feat/feature-01 line-3  ;sleep 1

./common/change-user.sh "Donald"
./feat/start.sh            feat/feature-02
./feat/commit.sh           feat/feature-02 line-1  ;sleep 1
./feat/commit.sh           feat/feature-02 line-2  ;sleep 1
./feat/commit.sh           feat/feature-02 line-3  ;sleep 1

./common/change-user.sh "Obama"
./feat/rebase-from-master.sh feat/feature-01       ;sleep 1
./feat/merge-to-master.sh  feat/feature-01         ;sleep 1

./common/change-user.sh "Donald"
./feat/rebase-from-master.sh feat/feature-02       ;sleep 1
./feat/merge-to-master.sh  feat/feature-02         ;sleep 1

./common/status.sh


#!/bin/bash
set -o verbose
