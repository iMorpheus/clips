#!/bin/bash

# Purpose: Download Twitch clip to local machine
# Dependency: youtube-dl
# Supports: TwitchLOLs Twitter Hashtag: https://twitter.com/search?q=(%23TwitchLOLs)%20(from%3AiMorpheus)&src=typed_query&f=live
function Clipper()
{
BaseClipURL=https://clips.twitch.tv/ # Base Twitch Clip URL
read -p "Clip Name: " -e ClipName # Name of file
read -p "Clip URL: " -e ClipURL # Clip URL
(cd [path to download directory] ; youtube-dl -o "$ClipName.mp4" $BaseClipURL$ClipURL) # Change directory then download and name clip
cd [path to download directory] # Move directly to Clips Directory

# Catalog/Curate to clips.json
echo {\"Title\": \"$ClipName\", \"URL\": \"$BaseClipURL$ClipURL\"} >> clips.json # Appending because I don't know how to use jq

# TODO
# Add object to clips.json via jq
# Nest objects in array thingy
}

Clipper
