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
target_file="/Users/$USER/.bash_profile"
source_file="/Users/$USER/Dropbox/Sync/shell\ script/.bash_profile"

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
target_file="/etc/motd"
source_file="/Users/$USER/Dropbox/Sync/iTrem/motd"

echo " - is exist : $file"
if [ -e "$file" ]; then
    echo "${green}files found.${reset}"
else
    ln -s "${source_file}" "${target_file}"
fi
echo



#
# create symlink
#
echo
echo "${green}* create symlink....${reset}"
echo

# symlink to subl
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Navicat connect list
#ln -s ~/Documents/Navicat/preference.plist ~/Library/Application\ Support/PremiumSoft\ CyberTech

# Sequel Pro
#ln -s ~/Documents/Sequel\ Pro/Favorites.plist ~/Library/Application\ Support/Sequel\ Pro/Data
#ln -s ~/Documents/Sequel\ Pro/com.sequelpro.SequelPro.plist ~/Library/Preferences

# Transmit
#ln -s ~/Documents/Transmit/Favorites ~/Library/Application\ Support/Transmit
#ln -s ~/Documents/Transmit/Metadata ~/Library/Application\ Support/Transmit



#
# Allow Apps from Anywhere in macOS
#
echo
echo "${green}* spctl --master-disable : ${reset}"
echo
sudo spctl --master-disable
spctl --status



echo
echo "${green}-------------${reset}"
echo "${green}--- Done. ---${reset}"
echo "${green}-------------${reset}"
echo
