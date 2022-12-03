@echo off
for /R %%a IN ("Source\*.flv") do ( bin\ffmpeg -i %%a -preset ultrafast -crf 16 "Result\%%~na.mp4")
move Source\*flv ..\VideoConverter\Recycle\
echo Finished!
pause

