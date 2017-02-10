#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git checkout -b $1 $2
