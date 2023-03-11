#!/bin/bash
user=root
password=jaimepass
database=$1
TRUNCABLE_TABLE=$2
errorcode=100

if [ "$#" -ne 2 ]
 then
    echo "Numero de Parametros Incorrectos! "
    echo "Ingresar solo BD y Tabla"
    echo "Saliendo.."
    exit $errorcode
fi

echo "LA TABLA  $TRUNCABLE_TABLE SERA TRUNCADA!: "

mysql --user="$user" --password="$password" --database="$database" --execute=" TRUNCATE TABLE $TRUNCABLE_TABLE;"
