#!/bin/bash

#
# Install all the things with Homebrew, Casks and a Brewfile
#
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "${green}---------------------------${reset}"
echo "${green}--- create link for misc ---${reset}"
echo "${green}---------------------------${reset}"
echo

project="ml .env"
source_file="/Users/$USER/Dropbox/Sync/upn/Projects/ml.env"
target_file="/Users/$USER/Projects/mamilove.com.tw/.env"
# for docker, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"

project="scm .env"
source_file="/Users/$USER/Dropbox/Sync/upn/Projects/scm.env"
target_file="/Users/$USER/Projects/mamilove.com.tw/.scm.env"
# for docker, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"



project="push .env"
source_file="/Users/$USER/Dropbox/Sync/upn/Projects/push.env"
target_file="/Users/$USER/Projects/push-service/.env"
# for docker, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"



project="upn-clock.env"
source_file="/Users/$USER/Dropbox/Sync/upn/Projects/upn-clock.env"
target_file="/Users/$USER/Projects/upn-clock/.env"
# for docker, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"



project="application_default_credentials.json"
source_file="/Users/$USER/Dropbox/Sync/upn/Projects/application_default_credentials.json"
target_file="/Users/$USER/Projects/application_default_credentials.json"
# for docker, used `ln` not `ln -s`
ln "${source_file}" "${target_file}"



echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
