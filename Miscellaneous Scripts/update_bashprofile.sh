#!/bin/bash

#update .bash_profile

if !  [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Running as root! Don't use sudo!"
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
