#!/bin/bash

mv ~/.bashrc ~/.bashrc.bak
mv ~/.bash_aliases ~/.bash_aliases.bak
mv ~/.gitconfig ~/.gitconfig.bak
mv ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings.bak
mv ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings.bak

ln .bashrc ~/.bashrc
ln .bash_aliases ~/.bash_aliases
ln .gitconfig ~/.gitconfig
ln .git_promt.sh ~/.git_promt.sh
ln Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln Ruby.sublime-settings ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings

exit 0;
