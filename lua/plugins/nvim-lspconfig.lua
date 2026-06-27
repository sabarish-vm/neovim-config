return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        pyright = {},
        rustowl = {},
        markdown_oxide = {},

        marksman = {
          root_dir = function(fname)
            local path = vim.api.nvim_buf_get_name(vim.fn.bufnr(fname, false))
            if vim.fs.root(path, ".no-marksman") then
              return nil
            else
              return vim.fs.dirname(path)
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
