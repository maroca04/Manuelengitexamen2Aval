#!/bin/bash

read -p "Por favor, ingresa un numero : " numero

if [ $numero -lt 0 ]; then
    echo "Error: Debes ingresar un numero mayor que 0."
    exit 
fi

for ((i=0; i<=$numero; i++)); do
    echo $i
done
