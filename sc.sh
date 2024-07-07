#!/bin/bash

# Nom de la nouvelle branche
NEW_BRANCH="new-branch"

# Créer une nouvelle branche orpheline
git checkout --orphan $NEW_BRANCH

# Ajouter tous les fichiers et faire un commit initial
git add .
git commit -m "Initial commit"

# Forcer la mise à jour de la branche principale sur le dépôt distant
git push origin --force --set-upstream $NEW_BRANCH:main

# Supprimer la branche orpheline localement
git branch -D $NEW_BRANCH

# Optionnel: supprimer les anciennes branches
# git push origin --delete old-branch
