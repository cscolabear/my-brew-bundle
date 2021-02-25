#!/bin/bash


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "${green}---------------------------${reset}"
echo "${green}--- link-git ---${reset}"
echo "${green}---------------------------${reset}"
echo


source_file="/Users/$USER/Dropbox/Sync/System/.gitconfig"
target_file="/Users/$USER/.gitconfig"

function fun_link() {
    echo " - 🔍 is target exist? : \`${green}${target_file}${reset}\`"
    if [ -e "${target_file}" ]; then
        echo "⭕️${green}.gitconfig files found.${reset}"

    else
        echo " - 🔍 is source exist? : \`${green}${source_file}${reset}\`"
        if [ -e "${source_file}" ]; then
            echo "‼.gitconfig files not found! ready to create link...."
            echo "ln -s ${source_file} ${target_file}"
            ln -s "${source_file}" "${target_file}"

        else
            echo "❌${red}source not exist...${reset}"
        fi

    fi
}

fun_link $source_file $target_file
echo
echo "${green}use `git config --list` list your config...${reset}"
echo


source_file="/Users/$USER/Dropbox/Sync/System/.gitignore_global"
target_file="/Users/$USER/.gitignore_global"
fun_link $source_file $target_file
echo
echo "${green}use `git config --global core.excludesfile` your config...${reset}"
echo


echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo