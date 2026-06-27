return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")
    local htmlhint_args = {
      "stdin", -- Required for nvim-lint to pipe the buffer content
      "-f",
      "compact", -- Required so the parser can read the output
      "--rules",
      "tag-pair",
    }
    lint.linters_by_ft = {
      cpp = { "cppcheck" },
      markdown = { "htmlhint" },
    }
    lint.linters.htmlhint.args = htmlhint_args

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChanged" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
