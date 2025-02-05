#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# set up venv
if [ ! -d ${SCRIPT_DIR}/venv ]; then
    python3 -m venv ${SCRIPT_DIR}/venv
    source ${SCRIPT_DIR}/venv/bin/activate
    pip install esptool
fi

source ${SCRIPT_DIR}/venv/bin/activate
