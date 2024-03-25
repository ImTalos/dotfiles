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
vim.opt.clipboard = 'unnamedplus'    -- Syncs clipboard between Neovim to OS
-- Apply theme
local colorscheme = require("talos.colorscheme")
vim.cmd.colorscheme(colorscheme)
