# Video processing script :movie_camera:
Use this script to cut a large video file into pieces. 

### Prerequisits
* ffmpeg
* libx264
* a large video file
* timestamps
* a computer or a toaster

### Usage

Call this script like `./process.sh [video] [timestamps]`.
* `[video]`: any file that can be processed  
* `[timestamps]`: timestamps (see below)
e.g. `./process.sh in/mysuperlargevideo.mp4 in/mytimestamps`

### Timestamps file

Timestamp file should be in format:
```
00:00:02-00:03:26=01_AT_intro
00:03:26-00:06:16=02_AT_global_navigation
00:06:16-00:08:46=03_AT_content_hubs
00:08:46-00:14:37=04_AT_rb_racing
...
```