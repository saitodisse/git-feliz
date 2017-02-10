#!/bin/bash
set -o verbose
cd ./scripts/


read -p "... _seq01-sequential_merges.sh"
./_seq01-sequential_merges.sh 1


read -p "... _seq02-merges_at_end.sh"
./_seq02-merges_at_end.sh 1


read -p "... _seq03-merges_at_end_with_rebase.sh"
./_seq03-merges_at_end_with_rebase.sh 1


read -p "... _seq04-bugfixes-between-features.sh"
./_seq04-bugfixes-between-features.sh 1


read -p "... _seq05-bugfixes-and-features-crazy-commits-merge-only.sh"
./_seq05-bugfixes-and-features-crazy-commits-merge-only.sh 1


read -p "... _seq06-bugfixes-and-features-crazy-commits-with-rebase.sh"
./_seq06-bugfixes-and-features-crazy-commits-with-rebase.sh 1


read -p "... _seq07-release-branch-merge.sh"
./_seq07-release-branch-merge.sh 1


read -p "... _seq08-release-branch-rebase.sh"
./_seq08-release-branch-rebase.sh 1


read -p "... _seq09-squash-and-rebase.sh"
./_seq09-squash-and-rebase.sh 1


read -p "... _seq10-release-branch-rebase-squash.sh"
./_seq10-release-branch-rebase-squash.sh 1
