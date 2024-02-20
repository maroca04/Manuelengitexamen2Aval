#!/bin/bash

# Archivo de la tabla
tabla_file="respuestas.txt"

victorias_equipo=0

while read -r linea; do
    equipo=$(echo "$linea" | awk '{print $1}')
    victorias=$(echo "$linea" | awk '{print $3}')

    if [ "$equipo" == "Barcelona" ]; then
        victorias_equipo=$victorias
    fi
done < "$tabla_file"

echo "¿Cuántas victorias tiene el Barcelona? La respuesta es: $victorias_equipo."
