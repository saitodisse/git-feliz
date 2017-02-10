#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout $1


# ------------
git rebase $2
