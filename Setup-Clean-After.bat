@echo off
type "%CD%\art\art.txt"                                                                                                                                         
                                                                                                                                          

pause
echo Downloading Files Using Wget...
"%cd%\Tools\GnuWin32\bin\wget.exe" http://res06.bignox.com/full/20200328/0a4e8c04fc0f4b0eb01dc6a42816618f.exe?filename=nox_setup_v6.6.0.5_full_intl.exe
echo Download Complete.

pause
echo Renaming Files...
ren "0a4e8c04fc0f4b0eb01dc6a42816618f.exe?filename=nox_setup_v6.6.0.5_full_intl.exe" "NoxPlayerSetup.exe"
echo Renaming Complete.

pause
echo Creating Directory Structure...
mkdir "%cd%\NoxPlayer"
echo Complete.

pause
echo Extracting Files...
"%cd%\Tools\7-Zip\App\7-Zip\7z.exe" x NoxPlayerSetup.exe -oNoxPlayer\Nox 
echo Extracting Complete.

pause
echo Going To Extract Some Required Files...
"%cd%\Tools\7-Zip\App\7-Zip\7z.exe" x "%CD%\assets\Bignox.7z" -oNoxPlayer\Bignox 
echo Extracting Complete.

pause 
echo Going To Copy Run Scripts...
copy "%cd%\assets\SecretRunScripts\*" "%cd%\NoxPlayer"
echo Copy Complete.

pause
echo Removing Temp Files...
rem NoxPlayerSetup.exe
echo Remove Complete.

type "%CD%\art\"%CD%\art\thanks.txt"


pause
type "%CD%\art\Credits.txt"


pause
echo Copy The NoxPlayer Folder To Where Ever You Like, Like A USB-Stick 
echo To Run NoxPlayer Go To The NoxPlayer Folder And Run RunNox.bat
pause