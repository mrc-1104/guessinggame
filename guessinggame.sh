#!/bin/bash

function ask_guess {
	echo "Cuantos archivos hay en el directorio actual?"
	read guess
}

file_count=$(ls -1 | wc -1)

while true; do
	ask_guess
	if [[ $guess -eq $file_count ]]; then
	echo "felicidades has adivinado correctamente"
	break
	elif [[ $guess -lt $file_count ]]; then
	echo "tu conjetura es demasiada baja. Intenta nuevamente"
	else
	echo "tu conjetura es demasiada alta. Intenta nuevamente"
	fi
done
