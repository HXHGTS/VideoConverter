@echo off
for /R %%a IN ("Source\*.webm") do ( bin\ffmpeg -i %%a -preset ultrafast -crf 16 "Result\%%~na.mp4")
move Source\*webm ..\VideoConverter\Recycle\
echo Finished!
pause

