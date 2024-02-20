#!/bin/bash

tabla_file="respuestas.txt"  
equipo_ganador=""
max_puntos=0

while read -r linea; do
    equipo=$(echo "$linea" | awk '{print $1}')
    puntos=$(echo "$linea" | awk '{print $7}')

    if ((puntos > max_puntos)); then
        max_puntos=$puntos
        equipo_ganador=$equipo
    fi
done < "$tabla_file"

echo "El equipo que va ganando la liga es: $equipo_ganador con $max_puntos puntos."
