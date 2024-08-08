-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.expandtab = true -- expand tab in terms of normal spaces
-- vim.opt.tabstop = 4 -- this has been commented since it is overridden by ftplugin-defaults. Issue with LazyVim
vim.opt.shiftwidth = 4 -- alternatively this seems to fix the global tab spacing. https://github.com/LazyVim/LazyVim/discussions/454

-- Set OSC52 clipboard option to save clipboard contents to local clipboard from remote NVIM session
vim.g.clipboard = {
  name = "OSC_52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
    ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  },
}
