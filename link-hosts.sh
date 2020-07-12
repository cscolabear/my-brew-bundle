#!/bin/bash

#
# Install all the things with Homebrew, Casks and a Brewfile
#
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "${green}---------------------------${reset}"
echo "${green}--- link-hosts ---${reset}"
echo "${green}---------------------------${reset}"
echo



#source_file="/Users/$USER/Dropbox/Sync/System/hosts"
target_file="/etc/hosts"

function fun_overwrite_hosts() {
    if [ -e "${target_file}" ]; then
        echo -e "\t ⁉️ ${red}target exist, plz rename, backup it...${reset}"
    else
        read -p "❓ input your username? " username

        ln "/Users/$username/Dropbox/Sync/System/hosts" "${target_file}"
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
