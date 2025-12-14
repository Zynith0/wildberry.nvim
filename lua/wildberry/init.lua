local M = {}

function M.setup()
	local colors = {
		-- bg = "#1e292e",
		bg = "",
		fg = "#dff5f5",
		comment = "#738994",
		visual = "#bea9c2",
		black = "#48494a",
		red = "#f763a3",
		green = "#96d9a6",
		yellow = "#e5ed9f",
		blue = "#87d7ff",
		pink = "#df96fa",
		cyan = "#87ecf5",
		purple = "#b583f2",
	}

	local highlights = {
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.comment },
		String = { fg = colors.green },
		Keyword = { fg = colors.pink, bold = true },
		Visual = { fg = "", bg = colors.black, bold = true },
		Function = { fg = colors.cyan },
		Method = { fg = colors.pink },
		Operator = { fg = colors.pink },
		Number = { fg = colors.yellow },
		Boolean = { fg = colors.yellow },
		Float = { fg = colors.yellow },
		Character = { fg = colors.pink },
		Type = { fg = colors.green },
		["@variable"] = { fg = colors.purple },
		["@variable.builtin"] = { fg = colors.purple },
		["@variable.parameter"] = { fg = colors.purple },
		["@variable.parameter.builtin"] = { fg = colors.purple },
		["@variable.member"] = { fg = colors.purple },
		["@function"] = { fg = colors.cyan, bold = true },
		["@function.builtin"] = { fg = colors.cyan, bold = true },
		["@function.call"] = { fg = colors.cyan, bold = true },
		["@function.macro"] = { fg = colors.cyan, bold = true },
		["@function.method"] = { fg = colors.cyan, bold = true },
		["@function.method.call"] = { fg = colors.cyan, bold = true },
		["@constructor"] = { fg = colors.blue },
		["@constant"] = { fg = colors.yellow, bold = true },
		["@constant.builtin"] = { fg = colors.yellow, bold = true },
		["@operator"] = { fg = colors.blue },
		["@keyword"] = { fg = colors.red },
		["@keyword.coroutine"] = { fg = colors.red },
		["@keyword.function"] = { fg = colors.red },
		["@keyword.operator"] = { fg = colors.red },
		["@keyword.import"] = { fg = colors.red },
		["@keyword.type"] = { fg = colors.red },
		["@keyword.modifier"] = { fg = colors.red },
		["@keyword.repeat"] = { fg = colors.red },
		["@keyword.return"] = { fg = colors.red },
		["@keyword.debug"] = { fg = colors.red },
		["@keyword.exception"] = { fg = colors.red },
		["@keyword.conditional"] = { fg = colors.red },
		["@keyword.conditional.ternary"] = { fg = colors.red },
		["@type"] = { fg = colors.green },
		["@type.builtin"] = { fg = colors.green },
		["@type.definition"] = { fg = colors.green },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
