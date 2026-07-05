--------------------
---- ANIMATIONS ----
--------------------

hl.config({
    animations = {
        enabled = true,
    },
})

-- Bezier curves
hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.1} } })
hl.curve("easeout",  { type = "bezier", points = { {0.16, 1},   {0.3, 1}   } })
hl.curve("easein",   { type = "bezier", points = { {0.7, 0},    {0.84, 0}  } })

-- Animations
hl.animation({ leaf = "windows",    enabled = true,  speed = 8,  bezier = "myBezier", style = "slide"  })
hl.animation({ leaf = "windowsIn",  enabled = true,  speed = 6,  bezier = "easeout",  style = "popin"  })
hl.animation({ leaf = "windowsOut", enabled = true,  speed = 7,  bezier = "easein"                     })
hl.animation({ leaf = "border",     enabled = true,  speed = 10, bezier = "default"                    })
hl.animation({ leaf = "borderangle",enabled = true,  speed = 8,  bezier = "default"                    })
hl.animation({ leaf = "fade",       enabled = true,  speed = 7,  bezier = "default"                    })
hl.animation({ leaf = "workspaces", enabled = true,  speed = 6,  bezier = "myBezier", style = "slide"  })
hl.animation({ leaf = "layersIn",   enabled = true,  speed = 8,  bezier = "myBezier", style = "slide"  })