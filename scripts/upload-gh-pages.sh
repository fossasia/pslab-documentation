#!/bin/sh

git config --global user.name "Travis CI"
git config --global user.email "noreply+travis@fossasia.org"

make html
cp -r images _build/html/

git clone --quiet --branch=gh-pages https://$USER_NAME:$GITHUB_API_KEY@github.com/$USER_NAME/pslab-documentation gh-pages > /dev/null

cd gh-pages

rm -rf *
cp -r ../_build/html/* .

touch .nojekyll

echo "docs.pslab.io" > CNAME

git checkout --orphan temporary

git add --all .
git commit -am "[Auto] Update GH-Pages ($(date +%Y-%m-%d.%H:%M:%S))"

git branch -D gh-pages
git branch -m gh-pages

git push origin gh-pages --force --quiet > /dev/null
