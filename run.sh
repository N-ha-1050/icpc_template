#!/bin/bash

# . run.sh ${problem} ${infile:-in.txt} ${outfile:-out.txt}
#
# ex:
#   . run.sh A
#   . run.sh A in.txt out.txt

problem=${1}
infile=${2:-in.txt}
outfile=${3:-out.txt}

pypy3 ./problems/${problem}/main.py < ./problems/${problem}/${infile} > ./problems/${problem}/${outfile}
