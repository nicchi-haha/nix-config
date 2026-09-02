local ipc = "noctalia msg "

local shell = {
        launcher = ipc .. "panel-toggle launcher",
        session = ipc .. "panel-toggle session",
        
        volume = {
                up = ipc .. "volume-up 5",
                down = ipc .. "volume-down 5",
                mute = ipc .. "volume-mute"
        },

        brightness = {
                up = ipc .. "brightness-up",
                down = ipc .. "brightness-down"
        },

        clipboard = {
                toggle = ipc .. "panel-toggle clipboard",
                clear = ipc .. "clipboard-clear"
        },

        screenshot = {
                full = ipc .. "screenshot-fullscreen",
                region = ipc .. "screenshot-region"
        }
}

return shell
