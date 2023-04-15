#!/bin/bash -eu
DIR_1=${1:}
DIR_2=${2:}

if [[ $# -ne 2 ]]; then
    exit 1
fi

if [[ ! -d ${DIR_1} || ! -d ${DIR_2} ]]; then
    exit 1
fi

DIR_1=$(cd ${DIR_1} && pwd)
DIR_2=$(cd ${DIR_2} && pwd)
echo "${DIR_2}"

for FILE in ${DIR_1}/*; do

    if [[ -d ${FILE} ]]; then
        echo "${FILE} jest katalogiem"
    elif [[ -L ${FILE} ]]; then
        echo "${FILE} jest dowiazaniem symbolicznym"
    elif [[ -f ${FILE} ]]; then
        echo "${FILE} jest plikiem regularnym"
    fi

    #dopisac do zmiennej
    ln -s ${DIR_1}/${FILE##*/} "${DIR_2}/${FILE##*/}^^_ln"

done


