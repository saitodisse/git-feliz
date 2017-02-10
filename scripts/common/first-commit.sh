#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo



# ------------
# add first commit
echo 'line 1' > master.txt
echo 'line 2' >> master.txt
echo 'line 3' >> master.txt
echo 'line 4' >> master.txt


# ------------
git add .


# ------------
git commit -m"initial version"
