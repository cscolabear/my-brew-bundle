#!/bin/bash
#
# Install all the things with Homebrew, Casks and a Brewfile
#
echo ""
echo "--- install Start... ---"
echo ""

# If Homebrew is not installed
if ! which brew > /dev/null; then
	echo "Install Homebrew..."
     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Update brew
brew update

# Install everything in Brewfile
brew bundle

# Remove outdated versions from the cellar
brew cleanup



# cp bash_profile
echo ""
file="/Users/$USER/.bash_profile"

echo "is exist : $file"
if [[ -e "$file" ]]
then
    echo "files found."
else
    echo "files not found! ready to copy...."

	if [ -e ".bash_profile" ]
	then
		cp "bash_profile $file"
		echo "copy done."
	else
		echo "missing 'bash_profile', fail to copy..."
	fi
fi



# symlink to subl
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl



# Allow Apps from Anywhere in macOS
echo ""
echo "spctl --master-disable : "
sudo spctl --master-disable
spctl --status


echo ""
echo "--- Done. ---"
echo ""
