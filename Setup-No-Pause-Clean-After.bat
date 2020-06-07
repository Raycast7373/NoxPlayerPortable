@echo off
type "%CD%\art\art.txt"   


pause
echo Downloading Files...  Please manually close HTTPDownloader After The Download Completed!
"%cd%\Tools\HTTPDownloader.exe" --parts 8 --immediate --url https://www.bignox.com/en/download/fullPackage --output-directory "%cd%"
echo Download Complete.


echo Renaming Files...
ren "nox_setup*" "NoxPlayerSetup.exe"
echo Renaming Complete.


echo Creating Directory Structure...
mkdir "%cd%\NoxPlayer"
echo Complete.


echo Extracting Files...
"%cd%\Tools\7-Zip\App\7-Zip\7za.exe" x NoxPlayerSetup.exe -oNoxPlayer\Nox 
echo Extracting Complete.

/*
echo Going To Extract Some Required Files...
"%cd%\Tools\7-Zip\App\7-Zip\7za.exe" x "%CD%\assets\Bignox.7z" -oNoxPlayer\Bignox 
echo Extracting Complete.
*/
 
echo Going To Copy Run Scripts...
copy "%cd%\assets\SecretRunScripts\*" "%cd%\NoxPlayer"
echo Copy Complete.

echo Removing Temp Files...
del NoxPlayerSetup.exe
echo Remove Complete.

type "%CD%\art\thanks.txt"


pause
type "%CD%\art\Credits.txt"


pause

echo Copy The NoxPlayer Folder To Where Ever You Like, Like A USB-Stick 
echo To Run NoxPlayer Go To The NoxPlayer Folder And Run RunNox.bat
pause

