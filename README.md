# 🎵 YouTube Music Playlist Downloader

[![Platform](https://img.shields.io/badge/platform-Windows-blue.svg)](https://www.microsoft.com/windows)
[![Maintenance](https://img.shields.io/badge/maintained-yes-green.svg)](https://github.com/redwan-cse/YT-Music-Playlist-Downloader/graphs/commit-activity)
[![GitHub](https://img.shields.io/github/license/redwan-cse/YT-Music-Playlist-Downloader)](https://github.com/redwan-cse/YT-Music-Playlist-Downloader/blob/main/LICENSE)

A clean, powerful, and user-friendly Windows batch script to download entire YouTube (or YouTube Music) playlists as high-quality MP3 files.

Designed for simplicity, it hides all normal download logs and warnings, showing only a clean "Working..." message. Critical errors (like private videos) will still be displayed.

## ✨ Features

* **📄 Clean Interface:** Hides all normal download logs and warnings for a clean, simple look. Critical errors are still shown so you know what happened.
* **📊 Title Bar Activity:** The window's title bar will show activity to let you know the script is still working.
* **🎧 Auto-Conversion:** Automatically extracts audio and converts it to high-quality MP3.
* **🖼️ Rich Metadata:** Embeds video thumbnails as album art and includes Artist, Title, and Release Date tags.
* **📂 Organized:** Saves downloads into neat folders named after the playlist.
* **🔁 Batch Mode:** Download full playlist in one session without restarting the script.
* **🛡️ Resilient:** Automatically skips private or removed videos (showing an error) without stopping the entire playlist.

---

## 🚀 Installation & Setup

This script relies on two powerful open-source tools: `yt-dlp` and `ffmpeg`. For the script to work, all three files must be in the **same folder**.

### Step 1: Create a Folder
Create a new folder anywhere on your computer (e.g., on your Desktop called `Music Downloader`).

### Step 2: Download Dependencies
Download the following two files and place them inside that new folder.

| Tool | Description | Download Link |
| :--- | :--- | :--- |
| **yt-dlp.exe** | The core downloading engine. | [Latest Release (GitHub)](https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe) |
| **ffmpeg.exe** | Required for MP3 conversion. | [Gyandev Builds](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip) *(Extract the ZIP and only copy `ffmpeg.exe` from the `bin` folder)* |

### Step 3: Download the Script
Download the `YT-Music-Downloader.bat` file from this repository and place it in the same folder.

### 📂 Your folder should look like this:
```text
Music Downloader/
├── YT-Music-Downloader.bat
├── yt-dlp.exe
└── ffmpeg.exe
```
-----

## 🎮 How to Use

1.  Double-click `YT-Music-Downloader.bat` to launch the tool.
2.  Copy the URL of the YouTube playlist you want to download.
3.  Paste the URL into the terminal window and press **Enter**.
4.  Wait for the downloads to finish\!
      * *Tip: You can minimize the window and watch the progress in the taskbar title.*

-----

## 🔄 Updating

YouTube frequently changes their code, which can sometimes break downloaders. If you encounter errors, you likely need to update `yt-dlp`.

To update, open a command prompt in your downloader folder and run:

```cmd
yt-dlp -U
```

*Alternatively, you can just re-download the latest `yt-dlp.exe` from the link in Step 2 and replace the old one.*

-----

## 📝 Credits

This script is a user-friendly wrapper for these amazing open-source projects:

  * [yt-dlp](https://github.com/yt-dlp/yt-dlp): A feature-rich command-line audio/video downloader.
  * [FFmpeg](https://ffmpeg.org/): A complete, cross-platform solution to record, convert and stream audio and video.

-----

## ⚠️ Disclaimer

This tool is intended for downloading non-copyrighted material or for personal offline use of content you have permission to access. Please respect copyright laws and YouTube's terms of service.