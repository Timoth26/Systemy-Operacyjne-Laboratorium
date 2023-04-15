#!/bin/bash -eu
CATALOG=${1:-}

if [[ $# -ne 1 ]]; then
    echo "Nie podano argumentow"
    exit 1
fi

if [[ ! -d ${CATALOG} ]]; then
    echo "Katalog ${CATALOG} nie istnieje"
    exit 1
fi

DIR=$(cd ${CATALOG} && pwd)


for FILE in ${DIR}/*; do

    echo ${FILE}
    if [[ -f ${FILE} && ${FILE} == *.bak ]]; then
        chmod uo-w ${FILE}
    elif [[ -d ${FILE} && ${FILE} == *.bak ]]; then
        chmod 666 ${FILE}
        chmod o+x ${FILE}
    elif [[ -d ${FILE} && ${FILE} == *.tmp ]]; then
        chmod a+rw ${FILE}
    elif [[ -f ${FILE} && ${FILE} == *.txt ]]; then
        chmod 333 ${FILE}
        chmod u+r ${FILE}
        chmod 555 ${FILE}
        chmod ug+w ${FILE}
        chmod 666 ${FILE}
        chmod o+x ${FILE}
    elif [[ -f ${FILE} && ${FILE} == *.exe ]]; then
        chmod a+x ${FILE}
    fi
done
