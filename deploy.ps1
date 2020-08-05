# build
rmdir dist
mkdir dist

cp favicon.ico dist
cp index.html dist
cp life.png dist
cp styles.css dist
cp CNAME dist

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:Gyakusetsu/gyakusetsu.github.io.git master

cd ..

