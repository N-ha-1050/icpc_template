# .\create.ps1 $problem
#
# ex:
#   .\create.ps1 A

Param(
    [parameter(Mandatory=$true)][string]$problem
)

Copy-Item ./problems/_template ./problems/$problem -Recurse
Rename-Item -Path ./problems/$problem/main.py -NewName main_$problem.py