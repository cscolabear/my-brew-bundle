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

function createLink {
    ln -s "${1}" "${2}"
}

echo " - 🔍${red}${project}${reset} target: is exist? : \`${green}${target_file}${reset}\`"
if [ -e "${target_file}" ]; then
    echo "⭕️${green}target exist${reset}"

else
    echo " - source file: is exist? : \`${green}${source_file}${reset}\`"
    if [ -e "${source_file}" ]; then
        createLink "${source_file}" "${target_file}"
        echo "⭕️${green}link created!${reset}"

    else
        echo "❌${red}source not exist...${reset}"

    fi

fi
# ^


echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
