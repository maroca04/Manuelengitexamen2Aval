#!/bin/bash

tabla_file="respuestas.txt"

empates_atletico=$(grep "Atletico de Madrid" "$tabla_file" | awk '{print $6}')

if [ -n "$empates_atletico" ]; then
    echo "¿Cuántos empates registró el Atletico de Madrid? La respuesta es: $empates_atletico."
fi
