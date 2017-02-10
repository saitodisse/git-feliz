#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout master


# ------------
git merge $1 -m"MERGE: $1 with master"
