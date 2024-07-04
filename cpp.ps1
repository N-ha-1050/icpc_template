# .\cpp.ps1 $problem $case
#
# ex:
#   .\cpp.ps1 A
#   .\cpp.ps1 A A1

Param(
    [parameter(Mandatory=$true)][string]$problem,
    [array]$case="_.txt"
)

g++ ./cpp/$problem.cpp -std=c++14 -I ./ac-library

Get-Content ./in/$case | ./a.exe >  ./out/$case
