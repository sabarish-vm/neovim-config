return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        -- This explicitly loads the wezterm-types library whenever 'wezterm' is found
        { path = "wezterm-types", mods = { "wezterm" } },
      },
    },
  },
  {
    -- This downloads the actual type files to your local system
    "DrKJeff16/wezterm-types",
    lazy = true,
  },
}
