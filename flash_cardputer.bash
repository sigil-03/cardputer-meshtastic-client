#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# download binary
RELEASE_DIR=${SCRIPT_DIR}/release
if [ ! -d ${RELEASE_DIR} ]; then
    mkdir -p ${RELEASE_DIR} 
fi

BIN_FILE=${RELEASE_DIR}/CARDPUTER.bin
if [ ! -f ${BIN_FILE} ]; then
    wget https://github.com/echo-lalia/MicroHydra/releases/download/v2.3/CARDPUTER.bin -O ${BIN_FILE}
fi

# flash cardputer
source ${SCRIPT_DIR}/setup-env.bash
esptool.py --port $1 erase_flash
esptool.py --port $1 write_flash 0 ${RELEASE_DIR}/CARDPUTER.bin

