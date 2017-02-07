#!/bin/bash
set -o verbose


# -------------
./scripts/comparativo-merge-rebase/rebase/01-rebase_cria-repo.sh
./scripts/comparativo-merge-rebase/rebase/03-rebase_corrige-bug.sh bugfix-1
./scripts/comparativo-merge-rebase/rebase/02-rebase_nova-feature.sh feature-1
./scripts/comparativo-merge-rebase/rebase/03-rebase_corrige-bug.sh bugfix-2
./scripts/comparativo-merge-rebase/rebase/02-rebase_nova-feature.sh feature-2
./scripts/comparativo-merge-rebase/rebase/02-rebase_nova-feature.sh feature-3


# -------------
cd /tmp/new-repo-rebase


# ------------
git branch --all


# ------------
git log prod --graph --oneline

# ------------
git log master --graph --oneline

