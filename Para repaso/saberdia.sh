#!/bin/bash


#SABER SI QUE DIA DEL MES ES (MARTES, MIERCOLES...)



# Inicializar una variable para entrar en el bucle
ingreso_valido=false

while [ "$ingreso_valido" == false ]; do
    # Solicitar al usuario un valor del día numérico del mes
    read -p "Ingresa un valor del día (1-30): " dia

    # Verificar si el valor está en el rango correcto (1-30)
    if [ $dia -ge 1 ] && [ $dia -le 30 ]; then
        # Calcular el día de la semana asumiendo que el día 1 es lunes
        dia_semana=$((($dia - 1) % 7))
        
        # Mostrar el resultado
        case $dia_semana in
            0) echo "Lunes";;
            1) echo "Martes";;
            2) echo "Miércoles";;
            3) echo "Jueves";;
            4) echo "Viernes";;
            5) echo "Sábado";;
            6) echo "Domingo";;
        esac

        # Establecer la variable como verdadera para salir del bucle
        ingreso_valido=true
    else
        echo "Error: El valor debe estar en el rango de 1 a 30. Inténtalo de nuevo."
    fi
done
