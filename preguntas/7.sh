#!/bin/bash

tabla_file="respuestas.txt"

empates_RS=$(grep "Real Sociedad" "$tabla_file" | awk '{print $5}')

if [ -n "$empates_RS" ]; then
    echo "¿Cuántos partidos empató la Real Sociedad? La respuesta es: $empates_RS."

fi