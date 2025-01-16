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
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          prompt_prefix = " ",
          selection_caret = "❯ ",
          entry_prefix = "  ",
          layout_config = {
            horizontal = {
              preview_cutoff = 120,
            },
          },
        },
      })

      -- Enable telescope fzf native, if installed
      pcall(telescope.load_extension, "fzf")

      -- Key mappings
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>fw', builtin.diagnostics, {})
    end
  },
}
