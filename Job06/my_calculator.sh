#!/bin/bash

numun=$1
numdeux=$3
symbole=$2

if [ "$symbole"="x" ]
then
symbole=*
fi

resultats=$(($numun $symbole $numdeux))

echo "$resultats"
