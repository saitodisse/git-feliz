#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout $2


# ------------
git merge $1 -m"MERGE: $1 with $2"
