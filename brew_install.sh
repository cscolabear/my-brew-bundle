#!/bin/bash

#
# Install all the things with Homebrew, Casks and a Brewfile
#
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo
echo "--- install Start... ---"
echo

# If Homebrew is not installed
if ! which brew > /dev/null; then
	echo "* Install Homebrew..."
     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

echo
echo "* brew update...."
# Update brew
brew update

# Install everything in Brewfile
brew bundle

# Remove outdated versions from the cellar
brew cleanup



# cp bash_profile
echo
echo "* check bash_profile..."
file="/Users/$USER/.bash_profile"
source_file="bash_profile"

echo "is exist : $file"
if [ -e "$file" ]; then
    echo "${green}files found.${reset}"
else
    echo "files not found! ready to copy...."

	if [ -e "$source_file" ]; then
        cp $source_file $file
		echo "${green}copy done.${reset}"
	else
		echo "${red}missing '$source_file', fail to copy...${resest}"
	fi
fi
echo



echo
echo "* create symlink...."
# symlink to subl
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl



# Allow Apps from Anywhere in macOS
echo ""
echo "* spctl --master-disable : "
sudo spctl --master-disable
spctl --status


echo
echo "--- Done. ---"
echo
