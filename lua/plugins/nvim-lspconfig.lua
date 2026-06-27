return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        pyright = {},
        tinymist = {},
        harper_ls = {
          filetypes = { "typst" },
          settings = {
            ["harper-ls"] = {
              linters = {
                SpellCheck = true,
                SpelledNumbers = false,
                AnA = true,
                SentenceCapitalization = true,
                UnclosedQuotes = true,
                WrongApostrophe = false,
                LongSentences = false,
                RepeatedWords = true,
                Spaces = true,
                CorrectNumberSuffix = true,
              },
            },
          },
        },
        marksman = {
          root_dir = function(bufnr, on_dir)
            local path = vim.api.nvim_buf_get_name(bufnr)

            if vim.fs.root(path, { ".no-marksman" }) then
              return nil
            end
            local root = vim.fs.root(path, { ".marksman.toml" })
            if root then
              on_dir(root)
            end
          end,
        },

        html = {
          filetypes = { "html" },
        },
      },
    },
  },
}
