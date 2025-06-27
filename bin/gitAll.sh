#!/bin/bash
if [ -d ".git" ] ; then
  rm -rf .git
fi

targetRepo=https://github.com/ls-it-solutions/jibx-transfer.git

git init
git add bin/bareAll.sh bin/zipAll.sh bin/gitAll.sh
for subRepo in 'jibx' 'core' 'jibx-parent' 'schema-library' 'sub-projects' 'maven-plugin' 'jibx-eclipse' 'jibxws' 'xbis' 'artifacts' 'external' ; do
  git add "${subRepo}.git.zip"
done

git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin $targetRepo
#git push -f -u origin main