#! /bin/bash

num=-2
while [ $num -lt 0 ]
do
read -p "Dame un nº" num
done
if [ $((num%2)) -eq 0 ]
then
    echo "es par"
else
    echo "es impar"
fi


