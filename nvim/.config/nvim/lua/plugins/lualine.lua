-- Nice linebar
return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local colorscheme = require("talos.colorscheme")
		local lualine_theme = colorscheme == "default" and "auto" or colorscheme
		require("lualine").setup({
			options = {
				icons_enabled = false,
				theme = lualine_theme,
				component_separators = "|",
				section_separators = "",
			},
		})
	end
}
