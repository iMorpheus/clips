#!/bin/bash

# Purpose: Download Twitch clip to local machine
# Dependency: youtube-dl

function Clipper()
{
read -p "Clip Name: " -e ClipName # Name of file
read -p "Clip URL: " -e ClipURL # Clip URL
(cd [path to download directory] ; youtube-dl -o "$ClipName.mp4" $ClipURL) # Change directory then download and name clip
cd [path to download directory] # Move directly to Clips Directory

# Catalog/Curate to clips.json
echo {\"Title\": \"$ClipName\", \"URL\": \"$ClipURL\"} >> clips.json # Appending because I don't know how to use jq

# TODO
# Add object to clips.json via jq
# Nest objects in array thingy
}

Clipper
