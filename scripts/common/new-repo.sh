#!/bin/bash
set -o verbose


# ------------
rm /tmp/new-repo/*.txt
rm -rf /tmp/new-repo/.git
mkdir /tmp/new-repo
cd /tmp/new-repo



# ------------
# init the new repo
git init
