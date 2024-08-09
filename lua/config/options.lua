-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
require("config.remote_opts")
vim.opt.expandtab = true -- expand tab in terms of normal spaces
-- vim.opt.tabstop = 4 -- this has been commented since it is overridden by ftplugin-defaults. Issue with LazyVim
vim.opt.shiftwidth = 4 -- alternatively this seems to fix the global tab spacing. https://github.com/LazyVim/LazyVim/discussions/454
