local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)
require('mason').setup({})
require('mason-lspconfig').setup({
  registries = {
    "github:mason-org/mason-registry",
    "lua:mason-registry.index"
  },
  ensure_installed = { "clangd","lua_ls","rust_analyzer","pylsp"},
  handlers = {
	lsp_zero.default_setup,
      },
})
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

lspconfig.pylsp.setup({
  settings = {
    pylsp = {
      plugins = {
	configurationSources = { "flake8" },
	jedi = {
	    pythonPath = "/usr/bin/python"
	},
        pycodestyle = {
          enabled = true,
          ignore = { "E501", "W293", "W291", "W292", "E303","E302","E301","E231" }, -- Ignore line length, trailing spaces, blank lines, etc.
        },
	pyflakes = { enabled = true }, -- Syntax checking
        pylint = { enabled = false }, -- Disable pylint to avoid redundancy
        black = { enabled = true }, -- Black code formatter
        isort = { enabled = true }, -- Import sorting
        mypy = { enabled = true }, -- Static type checking with mypy
        rope_completion = { enabled = true }, -- Advanced refactoring
        jedi_completion = { enabled = true }, -- Enable autocompletion with Jedi
        jedi_hover = { enabled = true }, -- Hover support
        jedi_signature_help = { enabled = true }, -- Signature help
        jedi_symbols = { enabled = true, all_scopes = true }, -- Symbol information
	},
      },
    }
})

