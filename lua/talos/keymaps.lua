--[[
--  keymappings 
--]]
--vim.g.mapleader = "'" 
-- disable mappings
local opts = {}
local set = vim.keymap.set;
set('i', '<C-[>', '<NOP>', opts)
-- get out of insert mode
set('i', 'jk', '<esc>', opts)
-- Up and Down Movement
set('n', 'J', ':MoveLine(1)<CR>', opts)
set('n', 'K', ':MoveLine(-1)<CR>', opts)

set('n', '[d', vim.diagnostic.goto_prev,opts )
set('n', ']d', vim.diagnostic.goto_next,opts)
-- Visual-mode commands
set('v', 'J', ':MoveBlock(1)<CR>', opts)
set('v', 'K', ':MoveBlock(-1)<CR>', opts)

-- Disable arrow motions
set('', '<up>', '<nop>')
set('', '<down>', '<nop>')
set('', '<left>', '<nop>')
set('', '<right>', '<nop>')

-- keysetings
set('n','<leader>w','<cmd>write<cr>',{desc = 'Save'})
set('n','<leader>q','<cmd>q<cr>',{desc = 'Quit'})
set('n','<leader>r','<cmd>q!<cr>',{desc = 'Quit'})
set('n','<leader>k','<cmd>Man<cr>',{desc = 'Man'})
set('n','<leader>e',vim.cmd.Ex,{desc = 'Explorer'})

