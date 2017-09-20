#!/bin/bash

cd $(dirname $0)/..

git rm cache/ -r --cached

git add .
git commit -am "removed files"