return {
  "nvim-mini/mini.snippets",
  event = "InsertEnter",
  opts = function()
    local snippets = require("mini.snippets")
    return {
      snippets = {
        snippets.gen_loader.from_lang(),
        snippets.gen_loader.from_file(vim.fn.expand("../../snippets/python.json")),
      },
    }
  end,
}
