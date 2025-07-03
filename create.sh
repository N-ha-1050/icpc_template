#!/bin/bash

# . create.sh ${problem}
#
# ex:
#   . create.sh A

problem=${1}

cp -r ./problems/_template ./problems/${problem}
