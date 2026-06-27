-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<leader>/g", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
--
-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "kj", "<ESC>", opts)

vim.keymap.set("v", "p", '"_dP', opts)
vim.keymap.set("v", "d", '"_d', opts)
