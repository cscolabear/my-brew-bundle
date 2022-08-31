#!/bin/bash

#
# Install all the things with Homebrew, Casks and a Brewfile
#
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "${green}------------------------${reset}"
echo "${green}--- install Start... ---${reset}"
echo "${green}------------------------${reset}"
echo

# If Homebrew is not installed
if ! which brew > /dev/null; then
	echo "${green}* Install Homebrew...{$reset}"
     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

echo
echo "${green}* brew update....${reset}"
echo
brew update

# Install everything in Brewfile
brew bundle
brew cleanup



#
# ln bash_profile
#
echo
echo "${green}* check bash_profile...${reset}"
echo
source_file="/Users/$USER/Dropbox/Sync/shell_script/.bash_profile"
target_file="/Users/$USER/.bash_profile"

echo " - is exist : $file"
if [ -e "$file" ]; then
    echo "${green}files found.${reset}"
else
	ln -s "${source_file}" "${target_file}"
fi
echo



source_file="/Users/$USER/Dropbox/Sync/shell_script/..zshenv"
target_file="/Users/$USER/..zshenv"

echo " - is exist : $file"
if [ -e "$file" ]; then
    echo "${green}files found.${reset}"
else
	ln -s "${source_file}" "${target_file}"
fi
echo


source_file="/Users/$USER/Dropbox/Sync/shell_script/.zshrc"
target_file="/Users/$USER/.zshrc"

echo " - is exist : $file"
if [ -e "$file" ]; then
    echo "${green}files found.${reset}"
else
	ln -s "${source_file}" "${target_file}"
fi
echo



#
# ln motd
#
echo
echo "${green}* check motd...${reset}"
echo
source_file="/Users/$USER/Dropbox/Sync/iTrem/motd"
target_file="/etc/motd"

echo " - is exist : $file"
if [ -e "$file" ]; then
    echo "${green}files found.${reset}"
else
    sudo ln -s "${source_file}" "${target_file}"
fi
echo



#
# create symlink
#
echo
echo "${green}* create symlink....${reset}"
echo

# symlink to subl
# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl


#
# Allow Apps from Anywhere in macOS
spctl --status
echo
echo "${green}* spctl --master-disable : ${reset}"
echo
sudo spctl --master-disable




echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
