#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git branch --all


# ------------
git log --graph --oneline --all
