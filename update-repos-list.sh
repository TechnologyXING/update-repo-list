#!/bin/bash

# list here the absolute path to the repository
repos=( 
  "/var/www/html"
  "/var/www/html/wp-content/themes/prx-1ne"
  "/var/www/html/wp-content/plugins/keep-aspect-ratio"
)

i=0
t=${#repos[@]}
echo ""
echo "Getting latest for" $t "repositories using pull"

for repo in "${repos[@]}"
do
	((i++))
	echo ""
	echo "****** ["$i"/"$t"] Getting latest for" ${repo} "******"
	git -C "${repo}" pull
	echo "******************************************"
done
