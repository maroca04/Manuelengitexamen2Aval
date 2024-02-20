#!/bin/bash

tabla_file="respuestas.txt"

golesC_Girona=$(grep "Girona" "$tabla_file" | awk '{print $7}')

if [ -n "$golesC_Girona" ]; then
    echo "¿Cuantos goles en contra tiene el Girona? La respuesta es: $golesC_Girona."

fi
