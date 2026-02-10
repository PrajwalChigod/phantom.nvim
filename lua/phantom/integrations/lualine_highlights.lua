-- integrations/lualine_highlights.lua - Lualine fallback highlight groups for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

function M.load()
	local highlights = {
		LualineNormal = { fg = p.fg, bg = p.surface },
		LualineInsert = { fg = p.bg, bg = p.blue },
		LualineVisual = { fg = p.bg, bg = p.marsala },
		LualineReplace = { fg = p.bg, bg = p.red },
		LualineCommand = { fg = p.bg, bg = p.fg },
		LualineTerminal = { fg = p.bg, bg = p.marsala },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
