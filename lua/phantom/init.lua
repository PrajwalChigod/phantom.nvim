--
-- init.lua - Phantom colorscheme entry point
-- A minimalist dark colorscheme with washed-out colors
--
-- Usage:
--   require("phantom").setup()
--   -- or simply use :colorscheme phantom
--

local M = {}

--- Load the Phantom colorscheme
function M.setup()
	vim.opt.background = "dark"
	vim.g.colors_name = "phantom"

	-- Clear existing highlights
	vim.cmd("highlight clear")

	-- Load and apply the Lush theme
	local lush = require("lush")
	local theme = require("phantom.theme")
	lush(theme)
end

--- Get the color palette for external use
--- @return table palette The color palette
function M.palette()
	return require("phantom.palette")
end

--- Get the lualine theme
--- @return table lualine_theme The lualine theme configuration
function M.lualine()
	return require("phantom.lualine")
end

return M
