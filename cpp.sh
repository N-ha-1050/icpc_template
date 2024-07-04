#!/bin/bash

# . cpp.sh ${problem} ${case:-_.txt}
#
# ex:
#   . cpp.sh A
#   . cpp.sh A A1

problem=${1}
case=${2:-_.txt}

g++ ./cpp/${problem}.cpp -std=c++14 -I ./ac-library

./a.out < ./in/${case} > ./out/${case}