@echo off
setlocal enabledelayedexpansion

set "sourceFolder=%cd%"

set "destinationFolder=%cd%\compressed"
set "binFolder=%cd%\bin"
set "presetName=Camera-TelegramAV"
set "presetFileName=src\Camera-TelegramAV.json"

for %%i in ("%sourceFolder%\*.mp4") do (
    if not "%%~xi"=="" (
        src\HandBrakeCLI -i "%%i" -o "!destinationFolder!\%%~ni.mp4" --preset-import-file %presetFileName% --preset="%presetName%"
        if !errorlevel! equ 0 (
            echo Conversion successful for "%%i"
            move "%%i" "%binFolder%"
        ) else (
            echo Error converting "%%i". Skipping.
        )
    )
)

endlocal