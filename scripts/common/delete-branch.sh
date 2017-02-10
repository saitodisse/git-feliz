#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout master


# ------------
git branch -D $1
