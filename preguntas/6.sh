#!/bin/bash

tabla_file="respuestas.txt"

derrotas_Valencia=$(grep "Valencia" "$tabla_file" | awk '{print $5}')

if [ -n "$derrotas_Valencia" ]; then
    echo "¿Cuántas derrotas sufrió el Valencia? La respuesta es: $derrotas_Valencia."

fi