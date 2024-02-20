#!/bin/bash

tabla_file="respuestas.txt"

Goles_LP=$(grep "Las Palmas" "$tabla_file" | awk '{print $7}')

if [ -n "$Goles_LP" ]; then
    echo "¿Cuántos goles en total se marcaron en los partidos de Las Palmas? La respuesta es: $Goles_LP."

fi