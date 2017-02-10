#!/bin/bash
set -o verbose

SLEEP=$1

# with a simple rebase before merging to master we can understante very well
# all git log. It is easy to revert a commit now

cd ./scripts/

./common/new-repo.sh
./common/change-user.sh "Bush"
./common/first-commit.sh                                          ;sleep 1

./common/change-user.sh "Obama"
./feat/start.sh                feat/feature-1
./feat/commit.sh               feat/feature-1 line-1             ;sleep 1

./common/change-user.sh "Fixer"
./feat/start.sh                bugfix/fix-1
./feat/commit.sh               bugfix/fix-1 fix-1-line-1          ;sleep 1


./common/change-user.sh "Donald"
./feat/start.sh                feat/feature-2
./feat/commit.sh               feat/feature-2 line-1             ;sleep 1

./common/change-user.sh "Fixer"
./feat/commit.sh               bugfix/fix-1 fix-1-line-2          ;sleep 1

./common/change-user.sh "Fixer"
./feat/start.sh                bugfix/fix-2

./common/change-user.sh "Obama"
./feat/commit.sh               feat/feature-1 line-2             ;sleep 1

./common/change-user.sh "Fixer"
./feat/commit.sh               bugfix/fix-2 fix-2-line-1          ;sleep 1

./common/change-user.sh "Obama"
./feat/commit.sh               feat/feature-1 line-3             ;sleep 1

./common/change-user.sh "Fixer"
./feat/commit.sh               bugfix/fix-1 fix-1-line-3          ;sleep 1

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase bugfix/fix-1"; fi;
./feat/rebase-from-master.sh   bugfix/fix-1                       ;sleep 1
./feat/merge-to-master.sh      bugfix/fix-1                       ;sleep 1

./common/change-user.sh "Donald"
./feat/commit.sh               feat/feature-2 line-2             ;sleep 1

./common/change-user.sh "Fixer"
./feat/commit.sh               bugfix/fix-2 fix-2-line-2          ;sleep 1

./common/change-user.sh "Donald"
./feat/commit.sh               feat/feature-2 line-3             ;sleep 1

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase feat/feature-2"; fi;
./feat/rebase-from-master.sh   feat/feature-2                    ;sleep 1
./feat/merge-to-master.sh      feat/feature-2                    ;sleep 1

./common/change-user.sh "Fixer"
./feat/commit.sh               bugfix/fix-2 fix-2-line-3          ;sleep 1

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase bugfix/fix-2"; fi;
./feat/rebase-from-master.sh   bugfix/fix-2                       ;sleep 1
./feat/merge-to-master.sh      bugfix/fix-2                       ;sleep 1

./common/change-user.sh "Obama"

if [ $SLEEP == "1" ]; then sleep 1; else read -p "... rebase feat/feature-1"; fi;
./feat/rebase-from-master.sh   feat/feature-1                    ;sleep 1
./feat/merge-to-master.sh      feat/feature-1                    ;sleep 1


./common/status.sh


#!/bin/bash
set -o verbose
