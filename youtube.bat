ECHO OFF
ECHO Hello World
for /f "tokens=1* delims=" %%a in ('date /T') do set datestr=%%a
If NOT exist mkdir %datestr%
XCOPY F:\youtube\youtube.* F:\youtube\%datestr% 
cd %datestr%
for /F "tokens=*" %%A in (youtube_dl.txt) do (
   youtube-dl.exe %%A
)
pause

