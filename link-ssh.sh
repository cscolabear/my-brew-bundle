#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo
echo "${green}---------------------------${reset}"
echo "${green}--- create link for ssh ---${reset}"
echo "${green}---------------------------${reset}"
echo

source ./.env

source_file="$SOURCE_ROOT_PATH/ssh/.ssh"
target_file="/Users/$USER/.ssh"

echo "🧪 try: ln -s ${source_file} ${target_file}"

echo " - 🔍 is target exist? : \`${green}${target_file}${reset}\`"
if [ -e "${target_file}" ]; then
    echo "⭕️${green}ssh files found.${reset}"

else
    echo " - 🔍 is source exist? : \`${green}${source_file}${reset}\`"
    if [ -e "${source_file}" ]; then
        echo "‼️ssh files not found! ready to create link...."
        cd ~ && ln -s $SOURCE_ROOT_PATH/ssh/.ssh/
        chmod 400 ~/.ssh/id_rsa ~/.ssh/id_dsa
        ssh-add

    else
        echo "❌${red}source not exist...${reset}"
    fi

fi



echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
echo
