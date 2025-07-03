# .\run.ps1 $problem $infile="in.txt" $outfile="out.txt"
#
# ex:
#   .\run.ps1 A
#   .\run.ps1 A in.txt out.txt

Param(
    [parameter(Mandatory=$true)][string]$problem,
    [string]$infile="in.txt",
    [string]$outfile="out.txt"
)

Get-Content ./problems/$problem/$infile | pypy3 ./problems/$problem/main.py > ./problems/$problem/$outfile
