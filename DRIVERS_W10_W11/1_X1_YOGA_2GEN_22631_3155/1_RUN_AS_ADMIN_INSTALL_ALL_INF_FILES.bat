:: Author: Felipe Ndc (VicyosLife)

@echo off
cd /d "%~dp0"

@REM #######################################################################################################
@REM Save the root of this directory.
@REM set root_folder=%cd%

@REM Find files and folder containing *01_install_* in their names and save its paths to a .txt file.
@REM dir /s /b "*01_install_*" /b >> "%root_folder%\installer_files.txt"
@REM #######################################################################################################


@REM Install all of the .inf files:
for /f "tokens=*" %%i in (inf_installer_files.txt) do (
    IF EXIST "%%i" (
        
        echo pnputil -i -a %%i
        pnputil -i -a %%i

    )
)

pause