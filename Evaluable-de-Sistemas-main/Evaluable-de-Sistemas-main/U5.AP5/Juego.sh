#!/bin/bash
verde='\e[1;32m'
amarillo='\033[1;33m'
rojo='\e[1;31m'
azul='\033[0;34m'
reset='\033[0m'


echo -e "${azul}
   ___    _                                _      __                     _                         __                     
  / _ )  (_) ___   ___  _  __ ___   ___   (_) ___/ / ___   ___          (_) __ __  ___ _ ___ _ ___/ / ___   ____ ___   ___
 / _  | / / / -_) / _ \| |/ // -_) / _ \ / / / _  / / _ \ (_-<         / / / // / / _  // _  // _  / / _ \ / __// -_) (_-<
/____/ /_/  \__/ /_//_/|___/ \__/ /_//_//_/  \_,_/  \___//___/      __/ /  \_,_/  \_, / \_,_/ \_,_/  \___//_/   \__/ /___/
                                                                   |___/         /___/                                    
${reset}"

read -p "¿Cuántos jugadores son? (1 o 2): " num_jugadores
read -p "¿Cuántas preguntas quieres que te hagan? " num_preguntas
echo -e "${azul}Iniciando juego...${reset}"
read -t 2

if [ "$num_jugadores" -eq 1 ]; then

    # Para solo un jugador
    puntos=0

    for ((i = 1; i <= num_preguntas; i++)); do
        random=$(./numRandom.sh)
        pregunta=$(./preguntaRandom.sh "$random")
        respuestaCorrecta=$(./respuestaRandom.sh "$random"| tr -d '[[:space:]]')
        echo "$pregunta"
        read -t 30 respjugador
        respuesta=$( echo "$respjugador" | tr -d '[[:space:]]' )
    
        if [[ "$respuesta" = "$respuestaCorrecta" ]]; then
            echo -e "${verde} Has acertado, felicidades ${reset}"
            puntos=$((puntos + 1))
        else
            echo -e " ${rojo} Has fallado, la respuesta era $(./respuestaRandom.sh "$random") ${reset}"
            puntos=$((puntos - 1))
        fi 

        echo -e "${verde}Puntos del jugador: $puntos ${reset}"
    done

    echo -e "${azul} Juego terminado${reset}"
    echo -e "${azul} Puntos del jugador: $puntos ${reset}"
    echo -e "${azul} Gracias por jugar ${reset}"

elif [ "$num_jugadores" -eq 2 ]; then
    
   #Para dos jugadores

    puntosjugador1=0
    puntosjugador2=0

    for ((i = 1; i <= num_preguntas * 2; i++)); do
        jugador_actual=$(( (i - 1) % 2 + 1))  
        random=$(./numRandom.sh)
        pregunta=$(./preguntaRandom.sh "$random")
        respuestaCorrecta=$(./respuestaRandom.sh "$random" | tr -d '[[:space:]]')
        echo "$pregunta"
        read -t 30 respjugador
        respuesta=$( echo "$respjugador" | tr -d '[[:space:]]' )
        
        if [[ "$respuesta" = "$respuestaCorrecta" ]]; then
            echo -e " ${verde} Has acertado, felicidades ${reset}"
            if [ "$jugador_actual" -eq 1 ]; then
                puntosjugador1=$((puntosjugador1 + 1))
            else
                puntosjugador2=$((puntosjugador2 + 1))
            fi
        else
            echo -e "${rojo} Has fallado, la respuesta era $(./respuestaRandom.sh "$random")"
            if [ "$jugador_actual" -eq 1 ]; then
                puntosjugador1=$((puntosjugador1 - 1))
            else
                puntosjugador2=$((puntosjugador2 - 1))
            fi
        fi 

        echo -e "${verde}Puntos del Jugador 1: $puntosjugador1 ${reset}"
        echo -e "${verde}Puntos del Jugador 2: $puntosjugador2 ${reset}"
    done

    echo -e "${azul} Juego terminado ${reset} "
    echo -e "${azul}Puntos finales del Jugador 1: $puntosjugador1 ${reset}"
    echo -e "${azul}Puntos finales del Jugador 2: $puntosjugador2 ${reset}"
    echo -e "${azul}Gracias por jugar${reset}"

else
    echo "Numero de jugadores no permitido. El juego solo permite 1 o 2 jugadores."
    exit 1
fi
