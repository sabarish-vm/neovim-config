return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { "prettier" },
        lua = { "stylua" },
        sh = { "shfmt" },
      },

      lsp_format = "never",
    },
  },
}
