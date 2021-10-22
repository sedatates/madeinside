!/usr/bin/env sh

# abort on errors
set -e


git init
git add -A
git commit -m 'Deploy'

git push -f git@github.com:sedatates/madeinside.git main:master


cd -