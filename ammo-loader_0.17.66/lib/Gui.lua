gui = {}

function gui._init()
    global.gui = {}
    global.gui.infoFrames = {}
end
Init.registerInitFunc(gui._init)

gui.names = {}
gui.names.initDialogue = "amlo_init_dialogue"
gui.names.initFlow = "amlo_init_flow1"
gui.names.initBoxArtillery = "amlo_init_artillery"
gui.names.initBoxBurners = "amlo_init_burners"
gui.names.initBoxLocomotives = "amlo_init_locos"

function gui.createInitialDialogue(player)
    local window = player.gui.screen.add {type = "frame", name = gui.names.initDialogue, direction = "vertical"}
    window.style.bottom_padding = 4
    -- local titlebar =
    --     titlebar.create(
    --     window,
    --     "amlo_enable_titlebar",
    --     {label = {"gui-initial-dialog.titlebar-label-caption"}, draggable = true}
    -- )
    local intro = window.add {type = "label", name = "amlo_init_header", caption = "Ammo Loader Options"}
    local intro =
        window.add {
        type = "label",
        name = "amlo_init_intro",
        caption = "Turn on the features you would like Ammo Loader to use."
    }
    local flow = window.add {type = "flow", name = gui.names.initFlow, direction = "horizontal"}
    flow.add {
        type = "checkbox",
        name = gui.names.initBoxArtillery,
        -- style = "stretchable_button",
        caption = "Artillery",
        tooltip = {"gui-initial-dialog.yes-off-button-tooltip"},
        state = false
    }
    flow.add {
        type = "checkbox",
        name = gui.names.initBoxBurners,
        -- style = "stretchable_button",
        caption = "Burner Structures",
        tooltip = {"gui-initial-dialog.yes-off-button-tooltip"},
        state = false
    }
    flow.add {
        type = "checkbox",
        name = gui.names.initBoxLocomotives,
        -- style = "stretchable_button",
        caption = "Trains",
        tooltip = {"gui-initial-dialog.yes-off-button-tooltip"},
        state = false
    }
    -- buttons_flow.add {
    --     type = "button",
    --     name = "im_enable_button_yes_on",
    --     style = "stretchable_button",
    --     caption = {"", {"gui-initial-dialog.yes-on-button-caption"}, " [img=im-info-black-inline]"},
    --     tooltip = {"gui-initial-dialog.yes-on-button-tooltip"}
    -- }
    -- buttons_flow.add {
    --     type = "button",
    --     name = "im_enable_button_no",
    --     style = "stretchable_button",
    --     caption = {"", {"gui-initial-dialog.no-button-caption"}, " [img=im-info-black-inline]"},
    --     tooltip = {"gui-initial-dialog.no-button-tooltip"}
    -- }
    window.force_auto_center()
    return window
end

return gui
