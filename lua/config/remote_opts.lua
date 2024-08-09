-- Set OSC52 clipboard option to save clipboard contents to local clipboard from remote NVIM session

-- Check if the session that runs nvim is remote or local
local function paste()
  return {
    vim.fn.split(vim.fn.getreg(""), "\n"),
    vim.fn.getregtype(""),
  }
end

if os.getenv("SSH_TTY") == nil then
else
  vim.g.clipboard = {
    name = "OSC_52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = paste,
      ["*"] = paste,
    },
  }
end
