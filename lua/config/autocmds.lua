-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Recognize a new filetype for OpenGadget3 parameter file
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*.g3par",
  command = "setlocal filetype=g3par",
})
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "c", "cpp", "h", "hpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})
