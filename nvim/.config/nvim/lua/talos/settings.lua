--[[
--  editor opt settings
--]]
local opt = vim.opt
-- remove the newline comment
-- some other settings
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.hlsearch = false

opt.breakindent = true
opt.shiftwidth = 4
opt.cursorline = true

-- Syncs clipboard between Neovim to OS
opt.clipboard = 'unnamedplus'
opt.hlsearch = true

opt.updatetime = 250
opt.timeoutlen = 300

-- Apply theme
local colorscheme = require("talos.colorscheme")
vim.cmd.colorscheme(colorscheme)


