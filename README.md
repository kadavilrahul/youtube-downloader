# YouTube Downloader
A simple interactive tool that downloads YouTube videos directly to your computer in MP4 format.

## 🚀 Quick Start

### Clone Repository

```bash
git clone https://github.com/kadavilrahul/youtube-downloader.git
```

```bash
cd youtube-downloader
```

```bash
bash run.sh
```

## Prerequisites

Before you begin, make sure you have:

1. Ubuntu or Debian-based Linux system
2. Internet connection for downloading tools and videos
3. Basic terminal access (no advanced skills needed)

## Installation

The run.sh script handles everything automatically, but here's what it does:

1. **Install system dependencies**:
   ```bash
   sudo apt update -y
   sudo apt install -y python3-pip ffmpeg
   ```

2. **Install YouTube downloader**:
   ```bash
   pip install -U yt-dlp
   ```

3. **Start the interactive menu** - The script will show you options to choose from

## Features

1. **One-click setup** - Automatically installs all required tools
2. **Smart playlist detection** - Downloads single videos even from playlist URLs  
3. **High-quality MP4 output** - Uses H.264 video and AAC audio for maximum compatibility
4. **Interactive menu** - Easy-to-use options without typing complex commands
5. **Update functionality** - Keep your downloader current with latest YouTube changes

## How to Use

When you run the script, you'll see this menu:

1. **Install required tools** - Choose this first if it's your first time
2. **Download a YouTube video** - Paste any YouTube URL here
3. **Update yt-dlp** - Use this if downloads start failing
4. **Exit** - Close the program

### Example Download Process:

1. Choose option 2 from the menu
2. Paste your YouTube URL when prompted
3. Wait for the download to complete
4. Find your MP4 file in the same folder

## Project Structure

1. `run.sh` - Main script with interactive menu (60 lines of bash code)
2. `README.md` - This documentation file
3. `.opencode/` - Development tools folder (8 configuration files)

## Output Format

All videos are saved as MP4 files with:

1. **Video codec**: H.264 (works on all devices)
2. **Audio codec**: AAC (high quality sound)
3. **File location**: Same folder where you run the script

## Troubleshooting

1. **Problem**: "Permission denied" when installing tools
   **Solution**: Make sure you have sudo access and run the install option from the menu

2. **Problem**: Download fails with "Video unavailable"
   **Solution**: Try updating yt-dlp using option 3 from the menu

3. **Problem**: Script won't start
   **Solution**: Make sure you're in the correct folder and run `bash run.sh`

4. **Problem**: No video file appears after download
   **Solution**: Check if there were any error messages and try a different YouTube URL

## Customization

To change where videos are saved:

1. Open run.sh in a text editor
2. Add this line before the yt-dlp command: `cd /your/preferred/folder`
3. Save the file and run the script again

## Getting Help

If you need assistance:

1. Check the troubleshooting section above
2. Make sure you're using a valid YouTube URL
3. Try the update option if downloads suddenly stop working
4. Create an issue on GitHub if problems persist

## License

MIT License - You can freely use and modify this project