#!/bin/bash

# First parameter .. Github account username
username=$1

# if first parameter equals to zero then exit
if [ -z $1 ];
then
#echo "Specify an username! ( ./github username )"
#exit
username=ozcaan11

# finish if statement
fi

# download the username's page
wget https://github.com/$username

# read the file, find requirements, cut them and write them to a new file
cat $username | grep '<strong class="vcard-stat-count d-block">' | cut -d '>' -f 2 | cut -d '<' -f 1 >> test

# clear the screen
clear

# print it! sed 'Nq;d' test means find the N.th number in the file
echo "#############################"
echo "#"
echo "#         @$username"
echo "#"
echo "#   `sed '1q;d' test`	- followers"
echo "#   `sed '2q;d' test`	- starred repositories"
echo "#   `sed '3q;d' test`	- following"
echo "#"
echo "#############################" 

# remove the files
rm $username test

# finish the program
