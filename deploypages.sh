#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build


cd dist

git init
git add -A
git commit -m 'Deploy Pages'

git remote add origin git@github.com:sedatates/madeinside.git
git branch -M gh-pages
git push -u origin gh-pages

cd -