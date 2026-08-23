local mainMod = "SUPER"
local ipc = "caelestia shell "

-- Caelestia Widgets
-- Unbind widgets et from other config
hl.unbind(mainMod .. " + R")
hl.unbind(mainMod .. " + M")
hl.unbind(mainMod .. " + V")
hl.unbind(mainMod .. " + SHIFT + V")

-- Bind caelestia widgets
hl.bind(mainMod .. "+R", hl.dsp.exec_cmd(ipc .. "drawers toggle launcher"))
hl.bind(mainMod .. "+M", hl.dsp.exec_cmd(ipc .. "drawers toggle session"))
