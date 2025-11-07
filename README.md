🎬 YouTube Downloader (Terminal Script)

A powerful bash-based YouTube video downloader that runs entirely from the Linux terminal.
This script uses yt-dlp and ffmpeg to download videos in VLC-compatible MP4 (H.264 + AAC) format.
It also includes an interactive menu for easy use.

🚀 Features

✅ One-click installation of all dependencies
✅ Automatically detects playlists and downloads only the selected video
✅ Forces best-quality MP4 output for maximum compatibility
✅ Includes an option to update yt-dlp
✅ Clean, interactive terminal interface
✅ 100% command-line based — no GUI needed

🧰 Requirements

Ubuntu / Debian-based Linux

Python3 + pip

ffmpeg

⚙️ Installation

Clone this repository:
```bash
git clone https://github.com/kadavilrahul/youtube-downloader.git
```
```bash
cd youtube-downloader
```
```bash
bash run.sh
```


🧭 Usage Menu

When you start the script, you’ll see menu
Example:

Choose: 2
🎥 Enter YouTube URL: https://www.youtube.com/watch?v=Qn8QpbLr4gM

💾 Output Format

All downloaded videos will be saved as .mp4 files encoded with:

Video codec: H.264

Audio codec: AAC

This ensures full compatibility with VLC, mobile devices, and browsers.

🪄 Optional Customization

To change your default download folder:

Edit the script.

Add this line before the yt-dlp command:

cd /path/to/your/folder

🧑‍💻 Example Commands

Download a single video:

yt-dlp -S vcodec:h264,acodec:aac --merge-output-format mp4 "https://www.youtube.com/watch?v=Qn8QpbLr4gM"


Skip playlist and download only one:

yt-dlp --no-playlist "https://www.youtube.com/watch?v=abcd1234&list=PLxyz"

🧩 Update yt-dlp

Keep your downloader up to date:

pip install -U yt-dlp
