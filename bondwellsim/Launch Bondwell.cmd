@echo off
setlocal
cd /d "%~dp0"
if not exist "build\bondwellsim.exe" (
  echo Build the emulator first. See README.md for CMake instructions.
  pause
  exit /b 1
)
if not exist "disks\SYSTEM1.img" (
  echo Put a raw Bondwell system disk at disks\SYSTEM1.img.
  echo Use tools\copyqm2raw.py to convert CopyQM files.
  pause
  exit /b 1
)
if exist "disks\SYSTEM2.img" (
  "build\bondwellsim.exe" --disk-a "disks\SYSTEM1.img" --disk-b "disks\SYSTEM2.img"
) else (
  "build\bondwellsim.exe" --disk-a "disks\SYSTEM1.img"
)
if errorlevel 1 pause
