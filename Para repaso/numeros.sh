#!/bin/bash


#PARA PONER UN NUMERO Y QUE PONGA LOS NUMERO QUE HAY HASTA LLEGAR A EL 


# para pedir que ingrese un numero 
read -p "Por favor, ingresa un numero :" numero

# comprobar que ese numero sea mayor que 0
if [ $numero -lt 0 ]; then
    echo "Error: Debes ingresar un numero mayor que 0."
    exit 
fi

# Mostrar el listado de números desde 0 hasta el valor introducido
for ((i=0; i<=$numero; i++)); do
    echo $i
done
