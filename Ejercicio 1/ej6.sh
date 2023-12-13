#!/bin/bash

opcion=1

while [ $opcion -ne 6 ]
do
    echo "OPCIONES"
    echo "________"
    echo "1.- Buscar por titulo"
    echo "2.- Buscar por año"
    echo "3.- Buscar por editorial"
    echo "4.- Buscar por genero"
    echo "5.- Insertar libro"
    echo "6.- Salir"

    read -p "Elegir opcion: " opcion
    case $opcion in 
        1) read -p "Introduce parametro a buscar: " param
        cat bdlibros.txt | grep $param;;
        2) read -p "Introduce parametro a buscar: " param
        cat bdlibros.txt | grep $param;;
        3) read -p "Introduce parametro a buscar: " param
        cat bdlibros.txt | grep $param;;
        4) read -p "Introduce parametro a buscar: " param
        cat bdlibros.txt | grep $param;;
        5) ./ej5.sh;;
        6) opcion=6;;
        *) echo "opcion incorecta";;
    esac

done