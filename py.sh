#!/bin/bash

# . py.sh ${problem} ${case:-_.txt}
#
# ex:
#   . py.sh A
#   . py.sh A A1

problem=${1}
case=${2:-_.txt}

python -m isort ./py/${problem}.py
python -m black ./py/${problem}.py

python ./py/${problem}.py < ./in/${case} > ./out/${case}
