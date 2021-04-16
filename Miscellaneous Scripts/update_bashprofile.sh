#!/bin/bash

#update .bash_profile

printf "Checking to see if git is installed...\n"

if ! command -v git >/dev/null; then
  printf "Installing Git...\n"
  yum install git
fi

printf "Cloning repository...\n"
git clone https://github.com/AnthonyRubiano/Dotfiles.git /tmp/Dotfiles
mv /tmp/Dotfiles/.bash_profile ~/.bash_profile

printf "Cleaning up...\n"
rm -rf /tmp/Dotfiles

printf ".bash_profile Updated Successfully!...\n"

exit
