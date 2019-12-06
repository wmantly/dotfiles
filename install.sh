#!/bin/bash

mv ~/.bash_aliases ~/.bash_aliases.bak
mv ~/.gitconfig ~/.gitconfig.bak
mv ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings.bak
mv ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings.bak

ln .my_bash.sh ~/.my_bash.sh
ln .bash_aliases ~/.bash_aliases
ln .gitconfig ~/.gitconfig
ln .git_promt.sh ~/.git_promt.sh

mkdir -p ~/.config/sublime-text-3/Packages/User/
ln Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln Ruby.sublime-settings ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings

if grep -q my_bash.sh ~/.bashrc ; then
	echo "Already in bashrc"
else
	echo ". ~/.my_bash.sh" >> ~/.bashrc
fi
