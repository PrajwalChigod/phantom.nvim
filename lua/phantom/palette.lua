-- palette.lua - Color palette for Phantom colorscheme
-- A minimalist dark colorscheme with washed-out colors

local lush = require("lush")
local hsl = lush.hsl

local M = {}

-- Background colors
M.black = hsl(0, 0, 0) -- #000000
M.surface = hsl(0, 0, 15) -- #1f1f1f
M.selection = hsl(0, 0, 10) -- #1a1a1a
M.cursorline = hsl(0, 0, 10) -- #141414

-- Foreground colors
M.fg = hsl(0, 0, 60) -- #949494
M.fg_dim = hsl(0, 0, 50) -- #808080
M.fg_dark = hsl(0, 0, 35) -- #595959

-- Primary syntax colors
M.blue = hsl(211, 16, 50) -- #658794
M.cement = hsl(0, 4, 65) -- #a8a4a4
M.green = hsl(140, 22, 52) -- #5a9e70
M.red = hsl(0, 38, 50) -- #af5c5c
M.marsala = hsl(2, 33, 44) -- #954e4b

-- UI-only colors
M.orange = hsl(40, 28, 52) -- #a89668

return M
