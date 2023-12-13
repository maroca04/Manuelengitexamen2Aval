#!/bin/bash

read -p "Dime el titulo del libro a ingresar" titulo

read -p "Dime el ano del libro a ingresar" ano

echo "Generos: novela/poesia/terror"

read -p "Genero: " genero

read -p "Editorial: "editorial

datos="$titulo $ano $genero $editorial"

echo $datos >> bdlibros.txt

cat bdlibros.txt

