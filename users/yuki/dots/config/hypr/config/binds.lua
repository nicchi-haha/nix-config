-- Variables --
require('config/gamemode')
local mainMod = "SUPER"
local terminal = "uwsm app -- kitty"
local fileManager = "uwsm app -- nautilus"
local browser = "uwsm app -- firefox"
local shell = require 'config/shell-apps'

-- SYSTEM ACTIONS --
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("loginctl lock-session"))

-- Apps --
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd(browser))

-- Shell applications/widgets/commands --
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(shell.launcher))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(shell.session))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(shell.clipboard.toggle))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(shell.clipboard.clear))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(shell.volume.up),            { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(shell.volume.down),            { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(shell.volume.mute),                 { locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(shell.brightness.up),    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(shell.brightness.down),  { locked = true, repeating = true })

hl.bind("Print", hl.dsp.exec_cmd("hyprshot -o $HOME/Pictures/Screenshots -m active -m output"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("hyprshot -o $HOME/Pictures/Screenshots -m region"))
hl.bind("ALT + Print", hl.dsp.exec_cmd("hyprshot -o $HOME/Pictures/Screenshots -m window"))
