#!/bin/bash

#
# Install all the things with Homebrew, Casks and a Brewfile
#
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "${green}---------------------------${reset}"
echo "${green}--- link-app-source_tree ---${reset}"
echo "${green}---------------------------${reset}"
echo

source_file="/Users/$USER/Dropbox/Sync/SourceTree"
target_file="/Users/$USER/Library/ApplicationSupport"
echo "ln -s ${source_file} ${target_file}"
ln -s "${source_file}" "${target_file}"


echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
