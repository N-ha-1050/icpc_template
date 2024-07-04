# .\create.ps1 $lang $problem
#
# ex:
#   .\create.ps1 py A
#   .\create.ps1 cpp B

Param(
    [parameter(Mandatory=$true)][string]$lang,
    [parameter(Mandatory=$true)][array]$problem
)

Copy-Item ./$lang/_template.$lang ./$lang/$problem.$lang
