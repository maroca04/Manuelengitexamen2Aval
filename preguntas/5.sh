#!/bin/bash

tabla_file="respuestas.txt"

pts_AC=$(grep "Athletic Club" "$tabla_file" | awk '{print $9}')

if [ -n "$pts_AC" ]; then
    echo "¿¿Cuántos puntos tiene el Athletic Club? La respuesta es: $pts_AC."

fi