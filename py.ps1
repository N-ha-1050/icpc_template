# .\py.ps1 $problem $case
#
# ex:
#   .\py.ps1 A
#   .\py.ps1 A A1

Param(
    [parameter(Mandatory=$true)][string]$problem,
    [array]$case="_.txt"
)

python -m isort ./py/$problem.py
python -m black ./py/$problem.py

Get-Content ./in/$case | python ./py/$problem.py >  ./out/$case
