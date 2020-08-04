#!/usr/bin/env sh

# abort on errors
set -e

# build
mkdir dist

mv favicon.ico dist
mv index.html dist
mv CNAME dist

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/Gyakusetsu/gyakusetsu.github.io.git master

cd -