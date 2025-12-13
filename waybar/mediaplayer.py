#!/usr/bin/env python3
import subprocess
import json

PLAYER = "spotify"

def run(cmd):
    try:
        return subprocess.check_output(cmd, text=True).strip()
    except subprocess.CalledProcessError:
        return ""

# Check if Spotify is running
players = run(["playerctl", "-l"])
if PLAYER not in players:
    print(json.dumps({"text": ""}))
    exit(0)

# Get status, title, artist
status = run(["playerctl", "-p", PLAYER, "status"])
artist = run(["playerctl", "-p", PLAYER, "metadata", "artist"])
title  = run(["playerctl", "-p", PLAYER, "metadata", "title"])
trackid = run(["playerctl", "-p", PLAYER, "metadata", "mpris:trackid"])

# Handle ads
if ":ad:" in trackid:
    text = " Advertisement"
else:
    text = f"  {artist} - {title}" if artist else f" {title}"

# Play/pause icon
if status != "Playing":
    text = " "             + text[2:]  # replace play with pause icon

# Truncate long text
MAX_LEN = 30  # adjust for your bar width
display_text = f" {artist} - {title}" if artist else f" {title}"


if len(text) > MAX_LEN:
    text = text[:MAX_LEN-3] + "…"


# Output JSON
output = {"text": text, "class": "custom-spotify", "alt": "spotify"}
print(json.dumps(output))
