@echo off
::C:\Users\Tommy\Desktop\Nosferatu (1922).avi echo || %~1 
::"C:\Users\Tommy\Desktop\Nosferatu (1922).avi" || echo %1
ffmpeg -i "%~1" -c copy "%~dp1%~n1%".mp4