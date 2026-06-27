return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  dependencies = { "rafamadriz/friendly-snippets" },
  -- use a release tag to download pre-built binaries
  version = "1.*",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    completion = {
      list = {
        selection = {
          auto_insert = false,
          preselect = false,
        },
      },
    },
    keymap = {
      preset = "none",
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<CR>"] = { "accept", "fallback" },
      ["<C-E>"] = { "cancel" },
      ["<Esc>"] = {
        function(cmp)
          if cmp.is_visible() then
            cmp.cancel()
          end
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, true, true), "n", false)
        end,
        "fallback",
      },
      ["<C-B>"] = { "scroll_documentation_up", "fallback" },
      ["<C-F>"] = { "scroll_documentation_down", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-N>"] = { "select_next", "fallback" },
      ["<C-P>"] = { "select_prev", "fallback" },
    },
  },
}
