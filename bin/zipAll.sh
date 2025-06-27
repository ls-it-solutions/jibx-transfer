#!/bin/bash

rm -rf *.git.zip

for subRepo in 'jibx' 'core' 'jibx-parent' 'schema-library' 'sub-projects' 'maven-plugin' 'jibx-eclipse' 'jibxws' 'xbis' 'artifacts' 'external' ; do
  echo zip -r -9 "${subRepo}.git.zip" "${subRepo}.git"
  zip -r -9 -o "${subRepo}.git.zip" "${subRepo}.git"
done
