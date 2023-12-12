#!/bin/bash

ingreso_valido=false

while [ "$ingreso_valido" == false ]; do

    read -p "Ingresa un valor del día (1-30): " dia

    if [ $dia -ge 1 ] && [ $dia -le 30 ]; then

        dia_semana=$((($dia - 1) % 7))
        
        case $dia_semana in
        
            0) echo "Lunes";;
            1) echo "Martes";;
            2) echo "Miércoles";;
            3) echo "Jueves";;
            4) echo "Viernes";;
            5) echo "Sábado";;
            6) echo "Domingo";;
        esac

        ingreso_valido=true
    else
        echo "Error: El valor debe estar en el rango de 1 a 30. Inténtalo de nuevo."
    fi
done
