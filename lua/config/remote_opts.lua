-- Set OSC52 clipboard option to save clipboard contents to local clipboard from remote NVIM session

-- Check if the session that runs nvim is remote or local
local stdout = io.popen("echo $SSH_TTY")
local res = stdout:read("*a")
stdout:close()

if res == nil or res == "" or res == " " then
else
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
end
