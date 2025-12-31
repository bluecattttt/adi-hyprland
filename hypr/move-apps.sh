#!/bin/bash

while true; do
    hyprctl clients | grep -q "class: Spotify" && \
        hyprctl dispatch movetoworkspace 5,class:Spotify

    hyprctl clients | grep -q "class: vivaldi-stable" && \
        hyprctl dispatch movetoworkspace 2,class:vivaldi-stable

    hyprctl clients | grep -q "class: Code" && \
        hyprctl dispatch movetoworkspace 4,class:Code

    sleep 1
done
