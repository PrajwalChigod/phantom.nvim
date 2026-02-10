-- integrations/bufferline.lua - BufferLine highlight groups for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

function M.load()
	local highlights = {
		-- Simple two-color system: active = marsala, inactive = fg_dim
		BufferLineFill = { bg = p.bg },
		BufferLineBackground = { fg = p.fg_dim, bg = p.bg },
		BufferLineBuffer = { fg = p.fg_dim, bg = p.bg },
		BufferLineBufferVisible = { fg = p.fg_dim, bg = p.bg },
		BufferLineBufferSelected = { fg = p.marsala, bg = p.bg },
		BufferLineTab = { fg = p.fg_dim, bg = p.bg },
		BufferLineTabSelected = { fg = p.marsala, bg = p.bg },
		BufferLineTabClose = { fg = p.fg_dim, bg = p.bg },
		BufferLineIndicatorSelected = { fg = p.marsala, bg = p.bg },
		BufferLineIndicatorVisible = { fg = p.fg_dim, bg = p.bg },
		BufferLineSeparator = { fg = p.bg, bg = p.bg },
		BufferLineSeparatorSelected = { fg = p.bg, bg = p.bg },
		BufferLineSeparatorVisible = { fg = p.bg, bg = p.bg },
		BufferLineCloseButton = { fg = p.fg_dim, bg = p.bg },
		BufferLineCloseButtonSelected = { fg = p.marsala, bg = p.bg },
		BufferLineCloseButtonVisible = { fg = p.fg_dim, bg = p.bg },
		BufferLineModified = { fg = p.fg_dim, bg = p.bg },
		BufferLineModifiedSelected = { fg = p.marsala, bg = p.bg },
		BufferLineModifiedVisible = { fg = p.fg_dim, bg = p.bg },
		BufferLineDuplicate = { fg = p.fg_dim, bg = p.bg },
		BufferLineDuplicateSelected = { fg = p.marsala, bg = p.bg },
		BufferLineDuplicateVisible = { fg = p.fg_dim, bg = p.bg },
		BufferLineError = { fg = p.fg_dim, bg = p.bg },
		BufferLineErrorSelected = { fg = p.marsala, bg = p.bg },
		BufferLineErrorDiagnostic = { fg = p.fg_dim, bg = p.bg },
		BufferLineErrorDiagnosticSelected = { fg = p.marsala, bg = p.bg },
		BufferLineWarning = { fg = p.fg_dim, bg = p.bg },
		BufferLineWarningSelected = { fg = p.marsala, bg = p.bg },
		BufferLineWarningDiagnostic = { fg = p.fg_dim, bg = p.bg },
		BufferLineWarningDiagnosticSelected = { fg = p.marsala, bg = p.bg },
		BufferLineInfo = { fg = p.fg_dim, bg = p.bg },
		BufferLineInfoSelected = { fg = p.marsala, bg = p.bg },
		BufferLineHint = { fg = p.fg_dim, bg = p.bg },
		BufferLineHintSelected = { fg = p.marsala, bg = p.bg },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
