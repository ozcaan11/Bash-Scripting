#!/bin/bash
echo "Enter a number:"
read num1
echo "Enter number again:"
read num2
if [ $num1 = $num2 ]; then
echo "You are doing well!"
else 
echo "Angry face!!!"
fi
