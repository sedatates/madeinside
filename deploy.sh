!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build


git init
git add -A
git commit -m 'Deploy'
git branch -M main
git remote add origin git@github.com:sedatates/madeinside.git
git push -u origin main

cd -