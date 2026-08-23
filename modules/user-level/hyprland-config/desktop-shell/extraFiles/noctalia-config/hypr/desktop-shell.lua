hl.on("hyprland.start", function ()
        hl.exec_cmd("uwsm app -- noctalia")
end)

hl.workspace_rule({ workspace = "1", monitor = "eDP-1", default_name = "一" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", default_name = "二" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", default_name = "三" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", default_name = "四" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", default_name = "五" })
hl.workspace_rule({ workspace = "6", monitor = "eDP-1", default_name = "六" })
hl.workspace_rule({ workspace = "7", monitor = "eDP-1", default_name = "七" })
hl.workspace_rule({ workspace = "8", monitor = "eDP-1", default_name = "八" })
hl.workspace_rule({ workspace = "9", monitor = "eDP-1", default_name = "九" })
hl.workspace_rule({ workspace = "10", monitor = "eDP-1", default_name = "十" })

local mainMod = "SUPER"
local ipc = "noctalia msg "

-- Noctalia Widgets
-- Unbind widgets set from other config
hl.unbind(mainMod .. " + R")
hl.unbind(mainMod .. " + M")
hl.unbind(mainMod .. " + V")
hl.unbind(mainMod .. " + SHIFT + V")

-- Bind noctalia widgets
hl.bind(mainMod .. "+R", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+M", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))
hl.bind(mainMod .. "+V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mainMod .. "+SHIFT+V", hl.dsp.exec_cmd(ipc .. "clipboard-clear"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))
