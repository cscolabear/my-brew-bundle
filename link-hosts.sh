#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo
echo "${green}---------------------------${reset}"
echo "${green}---      link-hosts     ---${reset}"
echo "${green}--- 💡 use sudo for this script ---${reset}"
echo "${green}---------------------------${reset}"
echo

source ./.env

source_file="$SOURCE_ROOT_PATH/System/hosts"
target_file="/etc/hosts"

echo "🧪 try: ln ${source_file} ${target_file}"

function fun_overwrite_hosts() {
    if [ -e "${target_file}" ]; then
        echo -e "\t ⁉️ ${red}target exist, plz rename, backup it...${reset}"
    else
        ln "${source_file}" "${target_file}"
        echo -e "\t ⭕️ ${green}link created!${reset}"
    fi
}

while true; do
    read -p "❓ Do you want to overwrite hosts? " yn
    case $yn in
        [Yy]* ) fun_overwrite_hosts; break;;
        [Nn]* ) echo;exit;;
        * ) echo -e "\t ⁉️ Please answer yes or no.";;
    esac
done
