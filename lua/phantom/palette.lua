-- palette.lua - Color palette for Phantom colorscheme
-- A minimalist dark colorscheme with washed-out colors

local lush = require("lush")
local hsl = lush.hsl

local M = {}

-- Background colors
M.black = hsl(0, 0, 0)
M.surface = hsl(0, 0, 15)
M.selection = hsl(0, 0, 10)
M.cursorline = hsl(0, 0, 10)

-- Foreground colors
M.fg = hsl(0, 0, 60)
M.fg_dim = hsl(0, 0, 50)
M.fg_dark = hsl(0, 0, 35)

-- Primary syntax colors
M.blue = hsl(215, 20, 50)
M.blue2 = hsl(220, 20, 60)

M.marsala = hsl(5, 30, 30)

M.red = hsl(0, 38, 50)
M.green = hsl(140, 22, 52)

-- UI-only colors
M.orange = hsl(40, 28, 52)

return M
