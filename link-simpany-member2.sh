#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo
echo "${green}---------------------------${reset}"
echo "${green}--- link-git ---${reset}"
echo "${green}---------------------------${reset}"
echo

source ./.env

function fun_link() {
    echo " - 🔍 is target exist? : \`${green}${target_file}${reset}\`"
    if [ -e "${target_file}" ]; then
        echo "⭕️${green} '${target_file}' found.${reset}"

    else
        echo " - 🔍 is source exist? : \`${green}${source_file}${reset}\`"
        if [ -e "${source_file}" ]; then
            echo "‼ '${target_file}' not found! ready to create link...."
            echo "ln -s ${source_file} ${target_file}"
            ln -s "${source_file}" "${target_file}"

        else
            echo "❌${red}source not exist...${reset}"
        fi

    fi
}


target=".env"
source_file="$SOURCE_ROOT_PATH/simpany/simpany-member2/$target"
target_file="$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-member2/$target"
echo "🧪 try: ln -s ${source_file} ${target_file}"

fun_link $source_file $target_file
echo
echo "${green} link ${target} ${reset}"
echo
echo


target=".env.testing"
source_file="$SOURCE_ROOT_PATH/simpany/simpany-member2/$target"
target_file="$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-member2/$target"
echo "🧪 try: ln -s ${source_file} ${target_file}"

fun_link $source_file $target_file
echo
echo "${green} link ${target} ${reset}"
echo
echo


target=".vscode"
source_file="$SOURCE_ROOT_PATH/simpany/simpany-member2/$target"
target_file="$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-member2/$target"
echo "🧪 try: ln -s ${source_file} ${target_file}"

fun_link $source_file $target_file
echo
echo "${green} link ${target} ${reset}"
echo
echo



echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
echo
