#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build




git init
git add -A
git commit -m 'Deploy'

git remote add origin git@github.com:sedatates/madeinside.git
git branch -M gh-pages1
git push -u origin gh-pages1

cd -