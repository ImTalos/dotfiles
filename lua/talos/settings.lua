--[[
--  editor opt settings
--]]
vim.opt.number = true
--vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.hlsearch = false
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
-- Syncs clipboard between Neovim to OS
vim.opt.clipboard = 'unnamedplus'
vim.opt.hlsearch = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Apply theme
local colorscheme = require("talos.colorscheme")
vim.cmd.colorscheme(colorscheme)

