#!/bin/bash

# . create.sh ${problem}
#
# ex:
#   . create.sh A

problem=${1}

cp -r ./problems/_template ./problems/${problem}
mv ./problems/${problem}/main.py ./problems/${problem}/main_${problem}.py
