#!/bin/bash
SOURCE_DIR=${1:-lab_uno}
RM_LIST=${2:-2remove}
TARGET_DIR=${3:-bakap}


if [[ ! -d ${TARGET_DIR} ]]; then
    mkdir ${TARGET_DIR}    
fi


NAMES=$(cat ${RM_LIST})

for NAME in ${NAMES}; do
    if [[ -e ${SOURCE_DIR}/${NAME} ]]; then
        echo "${SOURCE_DIR}/${NAME}"
        rm -rf ${SOURCE_DIR}/${NAME}
        echo "rm ${NAME}"
    fi
done


for FILE in ${SOURCE_DIR}/*; do
    echo "${FILE}"
    if [[ -f ${FILE} ]]; then
        mv ${FILE} ${TARGET_DIR}
        echo "mv ${FILE}"
    elif [[ -d ${FILE} ]]; then
        cp -r ${FILE} ${TARGET_DIR}
        echo "cp ${FILE}"
    fi
done


NR=$(ls ${SOURCE_DIR} | wc -l)

if [[ ! ${NR} -eq 0 ]]; then
  echo "Jeszcze coś zostało"
  if [[ ${NR} -ge 2 ]]; then
    echo "Zostały co najmniej 2 pliki"
    if [[ ${NR} -gt 4 ]]; then
        echo "Zostało więcej niż 4 pliki"
    else
        echo "Zostało między 2 a 4 pliki"
    fi
  fi
else
  echo "Tu był Kononowicz"
fi


zip -r "bakap_$(date +'%Y-%m-%d').zip" ${TARGET_DIR}