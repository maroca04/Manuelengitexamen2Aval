    #!/bin/bash

    pregunta="$(cat Preguntas.txt | head -n$1 | tail -n1 | cut -d* -s -f1)"

    echo $pregunta