@echo off
setlocal enabledelayedexpansion


set "video=%~1"
set "subtitle=%~dpn1.en.srt"


subliminal download -l en "%video%"

echo test
echo %video%
echo %subtitle%

::ffmpeg.exe -i "%video%" -vf "subtitles='%subtitle%'" -c:v mpeg4 -q:v 2 -c:a copy "test.mp4"
::ffmpeg.exe -loglevel debug -i "%video%" -vf "subtitles='test.srt'" -c:v mpeg4 -q:v 2 -c:a copy "test.mp4"
ffmpeg.exe -i "%video%" -vf "subtitles='test.srt'" -c:v mpeg4 -q:v 2 -c:a copy "test.mp4"

pause
