!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build


git init
git add -A
git commit -m 'Deploy'

git push -f git@github.com:sedatates/madeinside.git master
cd -