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


project="Sequel Pro"
source_file="/Users/$USER/Dropbox/Sync/Sequel Pro/Data"
target_file="/Users/$USER/Library/Application Support/Sequel Pro/Data"

echo " - 🔍${red}${project}${reset} target: is exist? : \`${green}${target_file}${reset}\`"
if [ -e "${target_file}" ]; then
    echo "⭕️${green}target exist${reset}"

else
    echo " - source file: is exist? : \`${green}${source_file}${reset}\`"
    if [ -e "${source_file}" ]; then
        ln -s "${source_file}" "${target_file}"
        echo "⭕️${green}link created!${reset}"

    else
        echo "❌${red}source not exist...${reset}"

    fi

fi
# ^

project="ml .env"
source_file="/Users/$USER/Dropbox/Sync/SourceTree"
target_file="/Users/$USER/Library/ApplicationSupport/SourceTree"
ln -s "${source_file}" "${target_file}"


echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
