#!/bin/bash

#Pulls variables from user input
printf "Please enter the name of the systemd unit file you wish to create: \n"
read -r filename
printf "Please input the full path of the start executable: \n"
read -r startexec
printf "Please input the full path of the stop executable: \n"
read -r stopexec
printf "Please enter a description of the service: \n"
read -r description
printf "Please enter the type: (simple, exec, forking) \n"
read -r type

#Checks to see if type is valid
while [ "$type" != "simple" ] && [ "$type" != "exec" ] && [ "$type" != "forking" ];
    do
        case $type in
            "simple")
                type="simple"
                break;;
            "exec")
                type="exec"
                break;;
            "forking")
                type="forking"
                break;;
            *) printf "Invalid Option, Please Try Again: \n"
                read -r type;;
        esac
    done

#Creates a file and pulls info from variables
cat << EOF > "/etc/systemd/system/$filename"
[Unit]
Description=$description
[Service]
Type=$type
ExecStart=$startexec
ExecStop=$stopexec
[Install]
WantedBy=multi-user.target
EOF

printf "Your systemd unit file has been created in /etc/systemd/system/$filename.\n"

exit
