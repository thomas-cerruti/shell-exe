#!/bin/bash

numun=$1
numdeux=$3
symbole=$2

if ["$#" -ne 3]
then
	echo "Usages: $0 <nombre1> <opérateur> <nombre2>"
	exit 1
fi

if [[!"$symbole"=["+-x/"]]]
then
	echo "l'opérateur n'est pas bonne"
	exit 1
fi

if ["$symbole"="x"]
symbole=*
fi

resultats=$(($numun $symbole $numdeux))

echo "$resultats"
