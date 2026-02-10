-- integrations/fzf_lua.lua - FzfLua highlight groups for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

function M.load()
	local highlights = {
		FzfLuaNormal = { fg = p.fg, bg = p.bg },
		FzfLuaBorder = { fg = p.fg_dark, bg = p.bg },
		FzfLuaTitle = { fg = p.blue, bold = true },
		FzfLuaPreviewNormal = { fg = p.fg, bg = p.bg },
		FzfLuaPreviewBorder = { fg = p.fg_dark, bg = p.bg },
		FzfLuaPreviewTitle = { fg = p.fg, bold = true },
		FzfLuaCursor = { fg = p.bg, bg = p.fg },
		FzfLuaCursorLine = { bg = p.cursorline },
		FzfLuaCursorLineNr = { fg = p.fg, bg = p.cursorline },
		FzfLuaSearch = { fg = p.bg, bg = p.blue },
		FzfLuaScrollBorderEmpty = { fg = p.selection, bg = p.bg },
		FzfLuaScrollBorderFull = { fg = p.fg_dim, bg = p.bg },
		FzfLuaScrollFloatEmpty = { fg = p.selection, bg = p.bg },
		FzfLuaScrollFloatFull = { fg = p.fg_dim, bg = p.bg },
		FzfLuaHelpNormal = { fg = p.fg, bg = p.bg },
		FzfLuaHelpBorder = { fg = p.fg_dark, bg = p.bg },
		FzfLuaHeaderBind = { fg = p.blue },
		FzfLuaHeaderText = { fg = p.fg_dim },
		FzfLuaPathColNr = { fg = p.blue },
		FzfLuaPathLineNr = { fg = p.fg },
		FzfLuaBufName = { fg = p.fg_dim },
		FzfLuaBufNr = { fg = p.blue },
		FzfLuaBufFlagCur = { fg = p.blue },
		FzfLuaBufFlagAlt = { fg = p.fg },
		FzfLuaTabTitle = { fg = p.fg, bold = true },
		FzfLuaTabMarker = { fg = p.blue },
		FzfLuaLiveSym = { fg = p.blue },
		FzfLuaFzfNormal = { fg = p.fg },
		FzfLuaFzfCursorLine = { bg = p.selection },
		FzfLuaFzfMatch = { fg = p.blue, bold = true },
		FzfLuaFzfBorder = { fg = p.fg_dark },
		FzfLuaFzfScrollbar = { fg = p.fg_dim },
		FzfLuaFzfSeparator = { fg = p.fg_dark },
		FzfLuaFzfGutter = { bg = p.bg },
		FzfLuaFzfPointer = { fg = p.blue },
		FzfLuaFzfMarker = { fg = p.fg },
		FzfLuaFzfPrompt = { fg = p.blue },
		FzfLuaFzfQuery = { fg = p.fg },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
