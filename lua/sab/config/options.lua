local options = {
  clipboard = "unnamedplus",    -- allows neovim to access the system clipboard
  hlsearch = true,              -- highlight all matches on previous search pattern
  ignorecase = true,            -- ignore case in search patterns
  mouse = "a",                  -- allow the mouse to be used in neovim
  smartcase = true,             -- smart case
  smartindent = true,           -- make indenting smarter again
  expandtab = true,             -- convert tabs to spaces
  shiftwidth = 4,               -- the number of spaces inserted for each indentation
  tabstop = 4,                  -- insert 4 spaces for a tab
  cursorline = true,            -- highlight the current line
  wrap = true,                  -- display lines as one long line
  linebreak = true,             -- companion to wrap, don't split words
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
