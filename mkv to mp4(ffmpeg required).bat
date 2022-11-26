@echo off
for /R %%a IN ("Source\*.mkv") do ( bin\ffmpeg -i %%a -vcodec copy -acodec copy "Result\%%~na.mp4")
move Source\*mkv ..\VideoConverter\Recycle\
echo Finished!
pause