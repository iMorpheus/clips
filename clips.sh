#!/bin/bash

function Clipper()
{
read -p "Clip Name: " -e ClipName # Name of file
read -p "Clip URL: " -e ClipURL # Clip URL
(cd [path to download directory] ; youtube-dl -o "$ClipName.mp4" $ClipURL) # Change directory then download and name clip
}

Clipper
