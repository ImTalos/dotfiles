return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
	  auto_install = true,
          ensure_installed = { "c" ,"cpp", "vim", "vimdoc","python","rust","lua"},
          sync_install = true,
          highlight = { enable = true },
          indent = { enable = true },
	  diagnostics = { disable = { 'missing-fields' } },
        })
    end
  }
}
