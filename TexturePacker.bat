@echo off
ECHO ----------------------------------------
echo Creating excludes

Echo .svn>exclude.txt
Echo .git>>exclude.txt
Echo Thumbs.db>>exclude.txt
Echo Desktop.ini>>exclude.txt
Echo dsstdfx.bin>>exclude.txt
Echo build.bat>>exclude.txt
Echo \skin.confluence\media\>>exclude.txt
Echo exclude.txt>>exclude.txt

ECHO ----------------------------------------
ECHO Creating XBT File...

START /B /WAIT TexturePacker -dupecheck -input media -output media\Default.xbt
START /B /WAIT TexturePacker -dupecheck -input themes\square -output media\Square.xbt

del exclude.txt

echo Textures.xbt build complete - Scroll Up to check for errors.
pause
