-- theme.lua - Highlight group definitions for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

--- Apply base theme highlight groups
local function apply_base_highlights()
	local highlights = {

		-- BASE HIGHLIGHTS
		Normal = { fg = p.fg, bg = p.bg },
		NormalFloat = { fg = p.fg, bg = p.surface },
		NormalNC = { fg = p.fg_dim, bg = p.bg },
		FloatBorder = { fg = p.fg_dark, bg = p.surface },
		FloatTitle = { fg = p.fg, bg = p.surface, bold = true },

		-- CURSOR AND SELECTION
		Cursor = { reverse = true },
		lCursor = { reverse = true },
		CursorIM = { reverse = true },
		TermCursor = { reverse = true },
		TermCursorNC = { reverse = true },
		CursorLine = { bg = p.cursorline },
		CursorLineNr = { fg = p.fg, bg = p.cursorline },
		CursorColumn = { bg = p.cursorline },
		Visual = { bg = p.selection_light },
		VisualNOS = { bg = p.selection_light },

		-- LINE NUMBERS AND COLUMNS
		LineNr = { fg = p.fg_dark },
		SignColumn = { bg = p.bg },
		FoldColumn = { fg = p.fg_dark, bg = p.bg },
		ColorColumn = { bg = p.surface },
		VertSplit = { fg = p.selection },
		WinSeparator = { fg = p.selection },

		-- STATUS LINE
		StatusLine = { fg = p.fg_dim, bg = p.surface },
		StatusLineNC = { fg = p.fg_dark, bg = p.surface },
		StatusLineTerm = { fg = p.fg_dim, bg = p.surface },
		StatusLineTermNC = { fg = p.fg_dark, bg = p.surface },

		-- WINBAR
		WinBar = { fg = p.fg, bg = p.bg },
		WinBarNC = { fg = p.fg_dark, bg = p.bg },

		-- TAB LINE
		TabLine = { fg = p.fg_dark, bg = p.surface },
		TabLineFill = { bg = p.surface },
		TabLineSel = { fg = p.fg, bg = p.bg },

		-- POPUP MENU
		Pmenu = { fg = p.fg, bg = p.surface },
		PmenuSel = { fg = p.fg, bg = p.selection },
		PmenuSbar = { bg = p.selection },
		PmenuThumb = { bg = p.fg_dark },
		PmenuMatch = { fg = p.phantomBlue, bg = p.surface },
		PmenuMatchSel = { fg = p.phantomBlue, bg = p.selection },

		-- SEARCH AND HIGHLIGHT
		Search = { fg = p.fg, bg = p.blue_search },
		IncSearch = { fg = p.fg, bg = p.blue_search },
		CurSearch = { fg = p.fg, bg = p.blue_search },
		Substitute = { fg = p.bg, bg = p.red },

		-- MESSAGES
		ErrorMsg = { fg = p.red },
		WarningMsg = { fg = p.yellow },
		ModeMsg = { fg = p.fg_dim },
		MoreMsg = { fg = p.phantomBlue },
		Question = { fg = p.phantomBlue },

		-- MISC UI
		MatchParen = { fg = p.fg, bg = p.selection, bold = true },
		NonText = { fg = p.fg_dark },
		SpecialKey = { fg = p.fg_dark },
		Whitespace = { fg = p.selection },
		EndOfBuffer = { fg = p.bg },
		Directory = { fg = p.phantomBlue },
		Title = { fg = p.fg, bold = true },
		Conceal = { fg = p.fg_dark },
		Folded = { fg = p.fg_dark, bg = p.surface },
		WildMenu = { fg = p.bg, bg = p.phantomBlue },
		QuickFixLine = { bg = p.selection },

		-- DIFF
		DiffAdd = { bg = p.green_diff },
		DiffChange = { bg = p.orange_diff },
		DiffDelete = { bg = p.red_diff },
		DiffText = { bg = p.orange_diff_text },

		-- SPELLING
		SpellBad = { sp = p.red, undercurl = true },
		SpellCap = { sp = p.phantomOrange, undercurl = true },
		SpellLocal = { sp = p.phantomBlue, undercurl = true },
		SpellRare = { sp = p.green, undercurl = true },

		-- DIAGNOSTICS
		DiagnosticError = { fg = p.red },
		DiagnosticWarn = { fg = p.yellow },
		DiagnosticInfo = { fg = p.phantomBlue },
		DiagnosticHint = { fg = p.green },
		DiagnosticOk = { fg = p.green },
		DiagnosticUnderlineError = { sp = p.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.yellow, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.phantomBlue, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.green, undercurl = true },
		DiagnosticVirtualTextError = { fg = p.red_diag },
		DiagnosticVirtualTextWarn = { fg = p.yellow_diag },
		DiagnosticVirtualTextInfo = { fg = p.blue_diag },
		DiagnosticVirtualTextHint = { fg = p.green_diag },

		-- SYNTAX HIGHLIGHTING
		Comment = { fg = p.fg_dark, italic = true },
		Constant = { fg = p.blue_light, bold = true },
		String = { fg = p.fg, italic = true },
		Character = { fg = p.fg, italic = true },
		Number = { fg = p.phantomOrange },
		Boolean = { fg = p.phantomOrange },
		Float = { fg = p.phantomOrange },
		Identifier = { fg = p.fg },
		Function = { fg = p.phantomBlue },
		Statement = { fg = p.fg },
		Conditional = { fg = p.fg },
		Repeat = { fg = p.fg },
		Label = { fg = p.fg },
		Operator = { fg = p.fg_dim },
		Keyword = { fg = p.phantomGray, bold = true },
		Exception = { fg = p.fg, bold = true },
		PreProc = { fg = p.fg_dim },
		Include = { fg = p.fg },
		Define = { fg = p.fg },
		Macro = { fg = p.blue_light, bold = true },
		PreCondit = { fg = p.fg },
		Type = { fg = p.phantomRed },
		StorageClass = { fg = p.fg },
		Structure = { fg = p.phantomBlue },
		Typedef = { fg = p.phantomRed },
		Special = { fg = p.phantomBlue },
		SpecialChar = { fg = p.phantomBlue },
		Tag = { fg = p.phantomBlue },
		Delimiter = { fg = p.fg_dim },
		SpecialComment = { fg = p.fg_dark, italic = true },
		Debug = { fg = p.fg },
		Underlined = { underline = true },
		Ignore = { fg = p.fg_dark },
		Error = { fg = p.red },
		Todo = { fg = p.phantomOrange, bold = true },

		-- TREESITTER HIGHLIGHTS
		["@variable"] = { fg = p.fg_dim },
		["@variable.parameter"] = { fg = p.fg_dim },
		["@variable.member"] = { fg = p.fg },
		["@variable.builtin"] = { fg = p.phantomOrange },

		["@constant"] = { fg = p.phantomBrown, bold = true },
		["@constant.macro"] = { fg = p.phantomBrown, bold = true },
		["@constant.builtin"] = { fg = p.phantomOrange },

		["@module"] = { fg = p.fg, italic = true },
		["@label"] = { fg = p.fg },

		["@string"] = { fg = p.fg, italic = true },
		["@string.documentation"] = { fg = p.fg_dark, italic = true },
		["@string.regexp"] = { fg = p.fg },
		["@string.escape"] = { fg = p.fg },
		["@string.special"] = { fg = p.fg },

		["@character"] = { fg = p.fg },
		["@character.special"] = { fg = p.fg },

		["@boolean"] = { fg = p.phantomOrange },
		["@number"] = { fg = p.phantomOrange },
		["@number.float"] = { fg = p.phantomOrange },

		["@type"] = { fg = p.phantomRed },
		["@type.definition"] = { fg = p.phantomRed },
		["@constructor"] = { fg = p.phantomBlue },
		["@type.builtin"] = { fg = p.phantomOrange },

		["@attribute"] = { fg = p.phantomOrange },
		["@property"] = { fg = p.phantomBlue },

		["@function"] = { fg = p.phantomBlue },
		["@function.builtin"] = { fg = p.phantomOrange },
		["@function.call"] = { fg = p.phantomBlue },
		["@function.macro"] = { fg = p.phantomBlue },
		["@function.method"] = { fg = p.phantomBlue },
		["@function.method.call"] = { fg = p.phantomBlue },

		["@operator"] = { fg = p.fg_dim },

		["@keyword"] = { fg = p.phantomGray },
		["@keyword.function"] = { fg = p.phantomGray },
		["@keyword.type"] = { fg = p.phantomGray },
		["@keyword.import"] = { fg = p.phantomGray, bold = true },
		["@keyword.coroutine"] = { fg = p.phantomGray, bold = true },
		["@keyword.operator"] = { fg = p.phantomGray },
		["@keyword.storage"] = { fg = p.phantomGray },
		["@keyword.repeat"] = { fg = p.phantomGray },
		["@keyword.return"] = { fg = p.phantomGray },
		["@keyword.debug"] = { fg = p.phantomGray, bold = true },
		["@keyword.exception"] = { fg = p.phantomGray, bold = true },
		["@keyword.conditional"] = { fg = p.phantomGray },
		["@keyword.conditional.ternary"] = { fg = p.phantomGray },
		["@keyword.directive"] = { fg = p.phantomGray },
		["@keyword.directive.define"] = { fg = p.phantomGray },

		["@punctuation.delimiter"] = { fg = p.fg_dim },
		["@punctuation.bracket"] = { fg = p.fg_dim },
		["@punctuation.special"] = { fg = p.phantomBlue },
		["@comment"] = { fg = p.fg_dark, italic = true },
		["@comment.documentation"] = { fg = p.fg_dark, italic = true },
		["@comment.error"] = { fg = p.red },
		["@comment.warning"] = { fg = p.yellow },
		["@comment.todo"] = { fg = p.phantomOrange, bold = true },
		["@comment.note"] = { fg = p.fg },

		["@markup.strong"] = { fg = p.phantomBlue, bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.heading"] = { fg = p.phantomRed, bold = true },
		["@markup.quote"] = { fg = p.phantomBlue, italic = true },
		["@markup.math"] = { fg = p.phantomBlue },
		["@markup.link"] = { fg = p.green },
		["@markup.link.label"] = { fg = p.green },
		["@markup.link.url"] = { fg = p.phantomBlue, underline = true },
		["@markup.raw"] = { fg = p.fg },
		["@markup.raw.block"] = { fg = p.fg },
		["@markup.list"] = { fg = p.phantomBlue },
		["@markup.list.checked"] = { fg = p.green },
		["@markup.list.unchecked"] = { fg = p.fg_dim },

		["@diff.plus"] = { fg = p.green },
		["@diff.minus"] = { fg = p.red },
		["@diff.delta"] = { fg = p.fg },

		["@tag"] = { fg = p.phantomBlue },
		["@tag.attribute"] = { fg = p.fg },
		["@tag.delimiter"] = { fg = p.fg_dim },

		-- LSP SEMANTIC TOKENS
		["@lsp.type.class"] = { fg = p.phantomRed },
		["@lsp.type.decorator"] = { fg = p.phantomOrange },
		["@lsp.type.enum"] = { fg = p.phantomRed, bold = true },
		["@lsp.type.enumMember"] = { fg = p.phantomBlue, bold = true },
		["@lsp.type.interface"] = { fg = p.phantomRed, bold = true },
		["@lsp.type.struct"] = { fg = p.phantomRed, bold = true },
		["@lsp.type.type"] = { fg = p.phantomRed, bold = true },
		["@lsp.type.typeParameter"] = { fg = p.phantomBrown },

		["@lsp.type.function"] = { fg = p.phantomBlue },
		["@lsp.type.method"] = { fg = p.phantomBlue },
		["@lsp.type.macro"] = { fg = p.phantomBlue, bold = true },

		["@lsp.type.variable"] = { fg = p.fg },
		["@lsp.type.parameter"] = { fg = p.fg },
		["@lsp.type.property"] = { fg = p.fg },

		["@lsp.type.namespace"] = { fg = p.fg, italic = true },

		["@lsp.type.keyword"] = { fg = p.fg_dim, bold = true },
		["@lsp.type.operator"] = { fg = p.fg_dim },

		["@lsp.type.comment"] = { fg = p.fg_dark, italic = true },
		["@lsp.type.string"] = { fg = p.fg, italic = true },

		["@lsp.mod.parameter"] = { fg = p.fg_dim },
		["@lsp.mod.declaration"] = { fg = p.fg_dim },
		["@lsp.mod.deprecated"] = { fg = p.phantomBrown, strikethrough = true },
		["@lsp.mod.static"] = { fg = p.phantomBrown, bold = true },
		["@lsp.mod.defaultLibrary"] = { fg = p.phantomOrange },
		["@lsp.mod.readonly"] = { fg = p.phantomBrown, bold = true },

		["@lsp.typemod.selfParameter"] = { fg = p.phantomRed, italic = true },
		["@lsp.typemod.class.declaration"] = { fg = p.phantomRed },
		["@lsp.typemod.function.declaration"] = { fg = p.phantomBlue },
		["@lsp.typemod.method.declaration"] = { fg = p.phantomBlue },
	}

	-- Apply all highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

--- Build and apply the theme with optional configuration
--- @param config table|nil Configuration options for integrations
function M.load(config)
	-- Apply base highlights
	apply_base_highlights()

	-- Default to loading all integrations if no config provided
	if not config or not config.integrations then
		config = {
			integrations = {
				bufferline = true,
				gitsigns = true,
				toggleterm = true,
				fzf_lua = true,
				lualine_highlights = true,
			}
		}
	end

	-- Conditionally load integrations
	if config.integrations.gitsigns then
		require("phantom.integrations.gitsigns").load()
	end

	if config.integrations.toggleterm then
		require("phantom.integrations.toggleterm").load()
	end

	if config.integrations.bufferline then
		require("phantom.integrations.bufferline").load()
	end

	if config.integrations.lualine_highlights then
		require("phantom.integrations.lualine_highlights").load()
	end

	if config.integrations.fzf_lua then
		require("phantom.integrations.fzf_lua").load()
	end
end

return M
