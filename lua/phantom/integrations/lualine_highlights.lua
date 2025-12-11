-- integrations/lualine_highlights.lua - Lualine fallback highlight groups for Phantom colorscheme

local lush = require("lush")
local p = require("phantom.palette")

---@diagnostic disable: undefined-global
local lualine_highlights = lush(function()
	return {
		LualineNormal({ fg = p.fg, bg = p.surface }),
		LualineInsert({ fg = p.black, bg = p.blue }),
		LualineVisual({ fg = p.black, bg = p.marsala }),
		LualineReplace({ fg = p.black, bg = p.red }),
		LualineCommand({ fg = p.black, bg = p.fg }),
		LualineTerminal({ fg = p.black, bg = p.marsala }),
	}
end)

return lualine_highlights
