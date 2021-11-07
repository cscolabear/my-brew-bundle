#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo
echo "${green}---------------------------${reset}"
echo "${green}--- link-vscode ---${reset}"
echo "${green}---------------------------${reset}"
echo

source ./.env

source_file="$SOURCE_ROOT_PATH/simpany/.vscode"
target_file="$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany/.vscode"

echo "🧪 try: ln ${source_file} ${target_file}"

function fun_overwrite() {
    if [ -e "${target_file}" ]; then
        echo -e "\t ⁉️ ${red}target exist, plz rename, backup it...${reset}"
    else
        read -p "❓ input your username? " username

        ln -s "${source_file}" "${target_file}"
        echo -e "\t ⭕️ ${green}link created!${reset}"
    fi
}

while true; do
    read -p "❓ Do you want to overwrite .vscode? " yn
    case $yn in
        [Yy]* ) fun_overwrite; break;;
        [Nn]* ) echo; break;;
        * ) echo -e "\t ⁉️ Please answer yes or no.";;
    esac
done


#
source_file="$SOURCE_ROOT_PATH/simpany-member2/.vscode"
target_file="$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-member2/.vscode"

echo "🧪 try: ln ${source_file} ${target_file}"

while true; do
    read -p "❓ Do you want to overwrite .vscode? " yn
    case $yn in
        [Yy]* ) fun_overwrite; break;;
        [Nn]* ) echo; break;;
        * ) echo -e "\t ⁉️ Please answer yes or no.";;
    esac
done


echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
echo