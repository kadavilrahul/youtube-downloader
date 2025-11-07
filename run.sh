#!/bin/bash
# -----------------------------------------
# 🎬 Interactive YouTube Downloader Script
# -----------------------------------------

set -e

function install_tools() {
    echo "🔧 Installing required tools..."
    sudo apt update -y
    sudo apt install -y python3-pip ffmpeg
    pip install -U yt-dlp
    echo "✅ Installation complete!"
}

function update_yt_dlp() {
    echo "🔄 Updating yt-dlp..."
    pip install -U yt-dlp
    echo "✅ yt-dlp updated!"
}

function download_video() {
    read -p "🎥 Enter YouTube URL: " URL

    echo "📡 Fetching video info..."
    sleep 1

    # Detect playlist
    if [[ "$URL" == *"list="* ]]; then
        echo "⚠️ Detected playlist URL — downloading only this video..."
        yt-dlp --no-playlist -S vcodec:h264,acodec:aac --merge-output-format mp4 "$URL"
    else
        yt-dlp -S vcodec:h264,acodec:aac --merge-output-format mp4 "$URL"
    fi

    echo "✅ Download complete!"
}

# Interactive Menu
while true; do
    clear
    echo "==============================="
    echo "     🎬 YouTube Downloader"
    echo "==============================="
    echo "1️⃣  Install required tools"
    echo "2️⃣  Download a YouTube video"
    echo "3️⃣  Update yt-dlp"
    echo "4️⃣  Exit"
    echo "==============================="
    read -p "👉 Choose an option [1-4]: " choice

    case $choice in
        1) install_tools ;;
        2) download_video ;;
        3) update_yt_dlp ;;
        4) echo "👋 Bye!"; exit 0 ;;
        *) echo "❌ Invalid option. Try again."; sleep 1 ;;
    esac
done
