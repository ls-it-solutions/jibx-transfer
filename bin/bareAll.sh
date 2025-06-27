#!/bin/bash

rm -rf *.git
if [ -f "README.md" ] ; then
  rm README.md
fi

baseUrl=https://github.com/jibx/

cat >> README.md <<README_HEADER
# jibx-transfer

Creates a bare repos containing repo of jibx.
The main repo is jibx. Rest are submodules.

README_HEADER

for subRepo in 'jibx' 'core' 'jibx-parent' 'schema-library' 'sub-projects' 'maven-plugin' 'jibx-eclipse' 'jibxws' 'xbis' 'artifacts' 'external' ; do
  echo git clone --bare "${baseUrl}${subRepo}.git"
  git clone --bare "${baseUrl}${subRepo}.git"
  cat >> README.md <<README

## ${subRepo}

Follow the complete link to the [${subRepo}](${baseUrl}${subRepo}.git) if needed.

README
done