-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
		},
		config = function()
			require("telescope").setup({})

			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")
			-- keymappings
			local builtin = require('telescope.builtin')
			-- need to create function - to defile git_files if git exists
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			--vim.keymap.set('n', '<leader>g', builtin.git_files {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
			vim.keymap.set('n', '<leader>fw', builtin.diagnostics, {})
--			vim.keymap.set('n', '<leader>g', builtin. {})
		  end
	  },
  }
