#!/bin/bash

SOFT_LINK=" -s"

if [[ $1 = "-hard" ]]; then
    SOFT_LINK=""
fi

function createLinkFn() {
    source_file=$1
    target_file=$2

    echo "🧪 try: ln${SOFT_LINK} ${source_file} ${target_file}"

    echo -e "\t - 🔍 is target exist? : \`${green}${target_file}${reset}\`"
    if [ -e "${target_file}" ]; then
        echo -e "\t ⭕️${green} '${target_file}' found.${reset}"

    else
        echo -e "\t - 🔍 is source exist? : \`${green}${source_file}${reset}\`"
        if [ -e "${source_file}" ]; then
            echo -e "\t ‼ '${target_file}' not found! ready to create link...."
            echo -e "\t ln${SOFT_LINK} ${source_file} ${target_file}"
            ln $SOFT_LINK "${source_file}" "${target_file}"

            echo
            echo -e "\t ${green} link${SOFT_LINK} ${target} ${reset}"
            echo

        else
            echo -e "\t ❌${red}source not exist...${reset}"
        fi
    fi
}
