#!/bin/bash

if [[ -f /release_setup.sh ]]; then
  . /release_setup.sh
fi

python -m venv ~/venv
. ~/venv/bin/activate

python -m pip install --upgrade pip setuptools wheel
# python -m pip install -e .[test]  # Fails (needs fix for PEP 660?)
python -m pip install .[test]
python -m pip install -r requirements.txt
