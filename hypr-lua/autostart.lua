-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()

  -- Wallpaper (swww)
  hl.exec_cmd("swww-daemon && sleep 0.5 && [ -f ~/.cache/swww/last_wallpaper ] && xargs swww img < ~/.cache/swww/last_wallpaper")

  -- Quickshell (delayed)
  hl.exec_cmd("sleep 3 && quickshell -c ~/.config/quickshell")

  -- Apps
  hl.exec_cmd("kitty -e rmpc",   { workspace = "1", silent })
  hl.exec_cmd("steam", { workspace = "3", silent })

 
   hl.exec_cmd("helium-browser")
  
  
  hl.exec_cmd("hyprctl dispatch workspace 1") --makes hyprland start at worspace 1
  -- GTK theme
  hl.env("GTK3_RC_FILES", os.getenv("HOME") .. "/.config/hyprland/gtk-3.0/settings.ini")
  hl.env("GTK2_RC_FILES", os.getenv("HOME") .. "/.config/hyprland/gtk-2.0/gtkrc")

  -- Notification daemon
  hl.exec_cmd("dunst")

  -- Steam presence
 -- hl.exec_cmd("python3 /home/adi/steam-presence/main.py")

  -- Wallpaper switcher
  hl.exec_cmd("matuwall --daemon")

  -- Lockscreen
  hl.exec_cmd("hyprlock")
  hl.exec_cmd("ibus-daemon -drx")
  

end)
