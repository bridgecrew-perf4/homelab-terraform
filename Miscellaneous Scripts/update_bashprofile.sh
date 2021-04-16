#!/bin/bash

#Check to see if root
if [[ $(/usr/bin/id -u) -eq 0 ]]; then
    echo "Running as root, don't use sudo!"
    exit
fi

printf "Checking to see if git is installed...\n"

if ! command -v git >/dev/null; then
  printf "Installing Git...\n"
  yum install git
fi

printf "Cloning repository...\n"
git clone https://github.com/AnthonyRubiano/Dotfiles.git /tmp/Dotfiles
printf "Cleaning up...\n"
rm -rf /tmp/Dotfiles

printf ".bash_profile Updated Successfully!...\n"

exit
