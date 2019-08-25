@pushd %1
@echo off

echo This script renames all *bin to *uasset, including subdirectories.
echo No backups are be made.
echo:
echo To quit, close the terminal or press Ctrl+C. To continue, press any other key.

REM Uncomment this to pause for confirmation
REM pause > nul

del /S /Q *.uasset > nul

for /R %%G in (*.bin) do (
	rename "%%G" "%%~nG.uasset"
)
