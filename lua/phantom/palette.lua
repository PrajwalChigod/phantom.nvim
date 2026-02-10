-- palette.lua - Color palette for Phantom colorscheme
-- A minimalist dark colorscheme with washed-out colors
-- All colors defined as hex values for zero dependencies

local M = {}

-- Background colors
M.bg = "#030301"
M.surface = "#9e9b93"
M.selection = "#1a1a1a"
M.cursorline = "#1a1a1a"

-- Foreground colors
M.fg = "#999999"
M.fg_dim = "#808080"
M.fg_dark = "#666666"

-- Primary syntax colors
M.phantomBlue = "#466092"
M.phantomRed = "#7d4439"
M.phantomOrange = "#a69566"

-- UI colors
M.red = "#af5050"
M.yellow = "#b3a573"
M.green = "#6ba57d"

-- Pre-computed color variations for better performance
-- These replace runtime color transformations

-- Selection variants
M.selection_light = "#2e2e2e"

-- Search backgrounds
M.blue_search = "#30394d"

-- Diff backgrounds
M.green_diff = "#2d4135"
M.orange_diff = "#423a29"
M.orange_diff_text = "#63573d"
M.red_diff = "#462020"

-- Diagnostic virtual text (dimmed)
M.red_diag = "#6b3030"
M.yellow_diag = "#7a7042"
M.blue_diag = "#43526b"
M.green_diag = "#41664f"

-- Syntax color variants
M.blue_light = "#94a5c9"

-- GitSigns line backgrounds
M.green_bg = "#24382c"
M.orange_bg = "#312c1f"
M.red_bg = "#371818"

return M
