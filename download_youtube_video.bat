@echo off
set /p Link="Enter YouTube link: "
yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 %Link%