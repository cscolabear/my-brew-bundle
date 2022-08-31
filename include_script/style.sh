#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

function headerFn() {
    echo
    echo
    echo "${green}---------------------------${reset}"
    echo "${green}--- $1 ---${reset}"
    echo "${green}---------------------------${reset}"
    echo
}

function footerFn() {
    echo
    echo "${green}-------------${reset}"
    echo "${green}--- Done. ---${reset}"
    echo "${green}-------------${reset}"
    echo
    echo
}
