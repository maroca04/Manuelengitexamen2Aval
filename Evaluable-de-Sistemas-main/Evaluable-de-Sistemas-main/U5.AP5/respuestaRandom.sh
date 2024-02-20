#!/bin/bash

respuesta="$( cat Preguntas.txt | head -n$1 | tail -n1 | cut -d* -s -f2 )"

echo "$respuesta"