#!/bin/bash
npm ci
npm run build -- --dest publish
git stash -u
git checkout gh-pages
rm -rf *
git stash pop
mv publish/* .
git add .
git commit -m "Update docs"
git push