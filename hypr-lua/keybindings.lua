---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "ALT"

-- Basic
hl.bind("ALT + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. "+C", hl.dsp.window.close())
hl.bind(mainMod .. "+M", hl.dsp.exit())
hl.bind(mainMod .. "+E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. "+V", hl.dsp.window.float())
hl.bind(mainMod .. "+R", hl.dsp.exec_cmd("rofi -show drun"))

-- Switch workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace (scratchpad)
--hl.bind(mainMod .. "+S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. "+SHIFT+S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through workspaces
--hl.bind(mainMod .. "+mouse_down", hl.dsp.workspace.focus("e+1"))
--hl.bind(mainMod .. "+mouse_up",   hl.dsp.workspace.focus("e-1"))

-- Move/resize with mouse
hl.bind(mainMod .. "+mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. "+mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume / brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Screenshots
hl.bind(mainMod .. "+PRINT", hl.dsp.exec_cmd('bash -c "sleep 1 && uwsm app -- hyprshot -m region"'))
hl.bind(mainMod .. "+SHIFT+PRINT", hl.dsp.exec_cmd("uwsm app -- hyprshot -m output"))
hl.bind("SHIFT+PRINT", hl.dsp.exec_cmd("uwsm app -- hyprshot -m window"))

-- Wallpaper
hl.bind(mainMod .. "+P", hl.dsp.exec_cmd("/home/adi/.config/hypr/scripts/wallpaper-switcher.sh"))

-- Launch apps
hl.bind(mainMod .. "+RETURN", hl.dsp.exec_cmd("uwsm app -- " .. terminal))
hl.bind(mainMod .. "+SHIFT+O", hl.dsp.exec_cmd("uwsm app -- obs-studio"))
--hl.bind(mainMod .. "+H",         hl.dsp.exec_cmd("uwsm app -- " .. textedit))
--hl.bind(mainMod .. "+T",         hl.dsp.exec_cmd("uwsm app -- " .. textedith))
hl.bind(mainMod .. "+SPACE", hl.dsp.exec_cmd("sh -c 'pkill -x wofi; uwsm app -- " .. menu .. "'"))
hl.bind(mainMod .. "+B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. "+L", hl.dsp.exec_cmd("uwsm app -- hyprlock"))
--hl.bind(mainMod .. "+M",         hl.dsp.exec_cmd("uwsm app -- jellyfinmediaplayer --disable-gpu"))
--hl.bind(mainMod .. "+C",         hl.dsp.exec_cmd("uwsm app -- signal-desktop"))
hl.bind(mainMod .. "+K", hl.dsp.exec_cmd("spotify"))

-- Focus
hl.bind(mainMod .. "+left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. "+right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. "+up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. "+down", hl.dsp.focus({ direction = "down" }))

-- Waybar
--hl.bind("SUPER+F", hl.dsp.exec_cmd('bash -c "pkill waybar && waybar &"'))

-- Swaync
hl.bind("SUPER+N", hl.dsp.exec_cmd('bash -c "pkill -x swaync 2>/dev/null; swaync &"'))
hl.bind("SUPER+Z", hl.dsp.exec_cmd("swaync-client -t"))

-- Wlogout
hl.bind(mainMod .. "+W", hl.dsp.exec_cmd("wlogout"))
