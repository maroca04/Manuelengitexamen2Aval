#!/bin/bash

tabla_file="respuestas.txt"

empates_RS=$(grep "Getafe" "$tabla_file" | awk '{print $4}')

if [ -n "$empates_RS" ]; then
    echo "¿Cuántos goles a favor tiene el Getafe? La respuesta es: $empates_RS."

fi