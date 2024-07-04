#!/bin/bash

# . create.sh ${lang} ${problem}
#
# ex:
#   . create.sh py A
#   . create.sh cpp B

lang=${1}
problem=${2}

cp ./${lang}/_template.${lang} ./${lang}/${problem}.${lang}
