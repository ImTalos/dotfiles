--[[
--  keymappings 
--]]
--vim.g.mapleader = "'" 
-- disable mappings
vim.keymap.set('i', '<C-[>', '<NOP>', opts)
-- get out of insert mode
vim.keymap.set('i', 'jk', '<esc>', opts)
-- Up and Down Movement
vim.keymap.set('n', 'J', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', 'K', ':MoveLine(-1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', 'J', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', 'K', ':MoveBlock(-1)<CR>', opts)

-- Disable arrow motions
vim.keymap.set('', '<up>', '<nop>')
vim.keymap.set('', '<down>', '<nop>')
vim.keymap.set('', '<left>', '<nop>')
vim.keymap.set('', '<right>', '<nop>')

-- keyvim.keymap.setings
vim.keymap.set('n','<leader>w','<cmd>write<cr>',{desc = 'Save'})
vim.keymap.set('n','<leader>q','<cmd>q<cr>',{desc = 'Quit'})
vim.keymap.set('n','<leader>k','<cmd>Man<cr>',{desc = 'Man'})
vim.keymap.set('n','<leader>e',vim.cmd.Ex,{desc = 'Explorer'})

