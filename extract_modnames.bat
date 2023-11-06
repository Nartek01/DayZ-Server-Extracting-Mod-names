@echo off
setlocal enabledelayedexpansion

set "outputFile=modnames.txt"
set "separator=;"

set "output="

for /D %%D in (@*) do (
    set "directoryName=%%D"
    set "output=!output!!separator!!directoryName!"
)

echo %output% > %outputFile%
echo Output written to %outputFile%

