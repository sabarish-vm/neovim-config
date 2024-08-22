-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<leader>/g", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Escape to normal mode using 'jk' instead 'ESC'
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "kj", "<ESC>", opts)
-- Do not overwrite register with the word that is overwritten
vim.keymap.set("v", "p", '"_dp', opts)
-- Do not cut to register iow emulate delete -- works only in visual mode
vim.keymap.set("v", "d", '"_d', opts)
-- Select entire line excluding whitespace
-- To select the entire including the whitespace at the end use 'V'
vim.keymap.set("n", "vil", "0vg_", opts)
-- select/copy entire line starting from current position and until the end of line excluding whitespace
vim.keymap.set("n", "vul", "vg_", opts)
vim.keymap.set("n", "yul", "yg_", opts)
