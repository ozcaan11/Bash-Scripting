#!/bin/bash
user=$1
while true
do
random=`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1`
wget https://www.instagram.com/p/$random/?taken-by=$user
if [ -f index.html\?taken-by\=$user ]; then
cat index.html\?taken-by\=$user | grep '<meta property="og:image" content="' | cut -d '"' -f 4 >> link
wget -i link -P $user
rm link index.html\?taken-by\=$user 
break
fi
done
