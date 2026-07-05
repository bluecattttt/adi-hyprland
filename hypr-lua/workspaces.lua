--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Ignore maximize requests from all apps
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Konsole no border
hl.window_rule({
    name  = "konsole-no-border",
    match = { class = "^konsole$" },
    border_size = 0,
})

-- App → Workspace rules



hl.window_rule({
    name      = "steam-workspace",
    match     = { class = "^steam$" },
    workspace = 3,
})

-- Matuwall rules
hl.window_rule({
    name        = "matuwall-rules",
    match       = { class = "com%.kwimy%.Matuwall" },
    float       = true,
    animation   = "slide top",
    rounding    = 15,
    border_size = 0,
})



-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})


hl.window_rule({
name = "helium-workspace",
match = { class = "^(helium)$" },
workspace = "2 silent",
})