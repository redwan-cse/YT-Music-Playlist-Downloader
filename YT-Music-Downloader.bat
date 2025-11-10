@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM Set a custom title for the window
title YouTube Music Downloader

REM Use UTF-8 codepage for nicer characters
chcp 65001 >nul

REM --- Main Script Loop ---
:START
REM Clear the screen for a clean look
cls

REM --- 1. Welcome & URL Input Screen ---
echo.
echo  ╔════════════════════════════════════════════╗
echo  ║      🎵 YouTube Music Downloader 🎵      ║
echo  ╚════════════════════════════════════════════╝
echo.
echo.
echo   Please paste the YouTube playlist URL below and press Enter.
echo.

REM Prompt the user for the URL
set "URL="
set /p "URL=  → "

REM Check if the user just pressed Enter without a URL
if "!URL!"=="" (
    echo.
    echo   [!] ERROR: You did not enter a URL.
    echo.
    echo   Press any key to try again...
    pause > nul
    goto :START
)

REM --- 2. Download Screen ---
cls
echo.
echo   [▶] Initializing download for:
echo   !URL!
echo.
echo   --------------------------------------------------
echo   [⏳] yt-dlp is now working. Please wait...
echo.
echo   (This will be quiet, no progress or warnings
echo    will be shown. Check the title bar for activity.)
echo.

REM === YOUR CORE SCRIPT ===
yt-dlp -q --no-warnings --console-title -f "bestaudio[ext=m4a]/bestaudio" ^
  -x --audio-format mp3 --audio-quality 0 ^
  --embed-thumbnail --convert-thumbnails jpg ^
  --add-metadata ^
  --parse-metadata "artist:%(artist,channel)s" ^
  --parse-metadata "date:%(release_date,upload_date)s" ^
  --force-ipv4 --retries 10 --retry-sleep 3 ^
  -o "%%(playlist_title)s\%%(title)s.%%(ext)s" "!URL!"

REM === END OF CORE SCRIPT ===

echo.
echo   --------------------------------------------------
echo.
echo   [✓] Download Finished.
echo.
echo   Your files have been saved to a new folder named after the playlist.
echo   (Note: Private or removed videos may have been skipped.)
echo.
echo   Press any key to continue...
pause > nul

REM --- 3. NEW: "Download Another" Loop Menu ---
:LOOP_MENU
cls
echo.
echo   What would you like to do next?
echo.
echo    [1] Download another playlist
echo    [2] Exit
echo.
set "choice="
set /p "choice=  → Select an option (1 or 2): "

IF "!choice!"=="1" GOTO :START
IF "!choice!"=="2" GOTO :END

REM Handle bad input
echo.
echo   [!] Invalid choice. Please press 1 or 2.
echo.
echo   Press any key to try again...
pause > nul
GOTO :LOOP_MENU

REM --- 4. End of Script ---
:END
endlocal