@echo off
type "%CD%\art\art.txt"   


pause
echo Downloading Files Using Wget...
"%cd%\Tools\GnuWin32\bin\wget.exe" http://res06.bignox.com/full/20200328/0a4e8c04fc0f4b0eb01dc6a42816618f.exe?filename=nox_setup_v6.6.0.5_full_intl.exe
echo Download Complete.


echo Renaming Files...
ren "0a4e8c04fc0f4b0eb01dc6a42816618f.exe?filename=nox_setup_v6.6.0.5_full_intl.exe" "NoxPlayerSetup.exe"
echo Renaming Complete.


echo Creating Directory Structure...
mkdir "%cd%\NoxPlayer"
echo Complete.


echo Extracting Files...
"%cd%\Tools\7-ZipPortable\App\7-Zip\7z.exe" x NoxPlayerSetup.exe -oNoxPlayer\Nox 
echo Extracting Complete.


echo Going To Copy Some Required Files...
xcopy "%cd%\assets\Bignox" "NoxPlayer\Bignox" /E /H /F /I
echo Copy Complete.

 
echo Going To Copy Run Scripts...
copy "%cd%\assets\SecretRunScripts\*" "%cd%\NoxPlayer"
echo Copy Complete.

echo Removing Temp Files...
rem NoxPlayerSetup.exe
echo Remove Complete.

type "%CD%\art\thanks.txt"


pause
type "%CD%\art\Credits.txt"


pause

echo Copy The NoxPlayer Folder To Where Ever You Like, Like A USB-Stick 
echo To Run NoxPlayer Go To The NoxPlayer Folder And Run RunNox.bat
pause

