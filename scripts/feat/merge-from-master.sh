#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout $1


# ------------
git merge master -m"MERGE: with master"
