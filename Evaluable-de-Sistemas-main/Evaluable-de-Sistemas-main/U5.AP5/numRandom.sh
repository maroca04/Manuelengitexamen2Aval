#!/bin/bash

lineas=`cat Preguntas.txt | wc -l`

nPregunta=$(($RANDOM % lineas))

echo $nPregunta

#El comando wc realizar cuenta desde la línea de comando, permite contar palabras, caracteres, líneas.
# wc - l cuenta las lineas que tiene 