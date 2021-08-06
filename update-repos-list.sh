#!/bin/bash

# list here the absolute path to the repository
repos=( 
  "/var/www/html"
  "/var/www/html/wp-content/themes/prx-1ne"
  "/var/www/html/wp-content/plugins/keep-aspect-ratio"
)

echo ""
echo "Getting latest for" ${#repos[@]} "repositories using pull"

for repo in "${repos[@]}"
do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
  git -C "${repo}" pull
  echo "******************************************"
done
