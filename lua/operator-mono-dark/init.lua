local M = {}

function M.setup()
	local colors = require("operator-mono-dark.colors")

	local highlights = {
		-- Editor
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_darker },
		SignColumn = { fg = colors.fg, bg = colors.bg },
		EndOfBuffer = { fg = colors.bg, bg = colors.bg },
		NormalNC = { fg = colors.fg, bg = colors.bg },
		Cursor = { fg = colors.bg, bg = colors.fg },
		VertSplit = { fg = colors.border, bg = colors.bg },
		CursorLine = { bg = colors.bg_darker },
		CursorLineNr = { fg = colors.fg, bold = true },
		LineNr = { fg = colors.line_nr },

		-- Status Line
		StatusLine = { fg = colors.fg, bg = colors.bg_dark },
		StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_dark },

		-- Tabs
		TabLine = { fg = colors.fg_dark, bg = colors.bg_dark },
		TabLineFill = { bg = colors.bg_dark },
		TabLineSel = { fg = colors.fg_light, bg = colors.bg },

		-- Search
		Search = { bg = colors.selection },
		IncSearch = { bg = colors.selection },

		-- Git Signs
		GitSignsAdd = { fg = colors.added },
		GitSignsChange = { fg = colors.modified },
		GitSignsDelete = { fg = colors.error },

		-- Telescope
		TelescopeBorder = { fg = colors.border, bg = colors.bg_darker },
		TelescopeNormal = { bg = colors.bg_darker },
		TelescopeSelection = { bg = colors.accent, fg = colors.fg_light },
		TelescopePromptNormal = { bg = colors.bg_darker },
		TelescopePromptBorder = { fg = colors.border, bg = colors.bg_darker },
		TelescopeResultsNormal = { fg = colors.fg, bg = colors.bg_darker },

		-- Diagnostics
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = "#BB8009" },
		DiagnosticInfo = { fg = colors.accent },
		DiagnosticHint = { fg = colors.fg_dark },

		-- Syntax
		Comment = { fg = colors.fg_dark, italic = true },
		String = { fg = "#CEE4BF" },
		Number = { fg = "#B5CEA8" },
		Function = { fg = "#DCDCAA" },
		Keyword = { fg = "#569CD6" },
		Conditional = { fg = "#C586C0" },
		Type = { fg = "#4EC9B0" },
		Identifier = { fg = "#9CDCFE" },
		Constant = { fg = "#4FC1FF" },
		Special = { fg = "#D16969" },

		-- Floating windows
		FloatBorder = { fg = colors.border, bg = colors.bg_darker },

		-- Indentation
		IndentBlanklineChar = { fg = "#313131" },
	}

	-- Create the colorscheme
	vim.api.nvim_create_augroup("OperatorMonoDark", { clear = true })

	-- Set colorscheme name
	vim.g.colors_name = "operator_mono_dark"

	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set all highlights
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
