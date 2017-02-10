#!/bin/bash
set -o verbose


# ------------
cd /tmp/new-repo


# ------------
git config --local user.name "$1"
git config --local user.email "$1@email.com"

