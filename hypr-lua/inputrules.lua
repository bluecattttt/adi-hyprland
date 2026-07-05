---------------
---- INPUT ----
---------------



-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.config({
    input = {
        kb_layout = "us",

        follow_mouse = 1,

        sensitivity = 0,
        accel_profile = "flat",

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
