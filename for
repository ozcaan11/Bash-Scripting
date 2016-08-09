#!/bin/bash
dosya=$1
if [ -z $1 ];
then
echo "lütfen dosya adı girin!"
exit
fi
degisken=`cat $dosya`
for var in $degisken
do
echo $var
done
