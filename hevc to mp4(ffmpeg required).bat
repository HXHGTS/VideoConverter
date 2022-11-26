@echo off
for /R %%a IN ("Source\*.mp4") do ( bin\ffmpeg -i %%a -c:a copy -x265-params crf=25 "Result\%%~na_hevc_out.mp4")
move Source\*mp4 ..\VideoConverter\Recycle\
echo Finished!
pause