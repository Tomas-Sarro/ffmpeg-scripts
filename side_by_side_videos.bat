@echo off
set /p "vidLeft=Enter left video: "
set /p "vidRight=Enter right video: "

ffmpeg -i %vidLeft% -i %vidRight% -filter_complex hstack leftandright.ts
