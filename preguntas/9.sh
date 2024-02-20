#!/bin/bash

tabla_file="respuestas.txt"

perdido_RB=$(grep "Real Betis" "$tabla_file" | awk '{print $6}')

if [ -n "$perdido_RB" ]; then
    echo "¿Cuántos partidos ha perdido el Real Betis? La respuesta es: $perdido_RB."

fi