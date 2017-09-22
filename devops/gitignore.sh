#!/bin/bash

cd $(dirname $0)/..

git rm .env --cached
git rm cache/ -r --cached
git rm test/templates_c/ -r --cached
git rm devops/mysql/volume/ -r --cached

git add .
git add cache/.gitkeep
git commit -am "removed files"
git push
