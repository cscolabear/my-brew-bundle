#!/bin/bash

#
# Install all the things with Homebrew, Casks and a Brewfile
#
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "${green}---------------------------${reset}"
echo "${green}--- create link for simpany env ---${reset}"
echo "${green}---------------------------${reset}"
echo



source_file="/Users/$USER/Dropbox/Sync/simpany/simpany-docker-dev/.env"
target_file="/Users/$USER/simpany-docker-dev/.env"
echo "ln ${source_file} ${target_file}"
ln -s "${source_file}" "${target_file}"

source_file="/Users/$USER/Dropbox/Sync/simpany/simpany/.env"
target_file="/Users/$USER/Projects/simpany/simpany/.env"
echo "ln ${source_file} ${target_file}"
# for docker container, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"

source_file="/Users/$USER/Dropbox/Sync/simpany/simpany-admin/.env"
target_file="/Users/$USER/Projects/simpany/simpany-admin/.env"
echo "ln ${source_file} ${target_file}"
# for docker container, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"



echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
