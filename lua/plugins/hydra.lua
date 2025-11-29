return {
  "nvimtools/hydra.nvim",
  dependencies = { "MunifTanjim/nougat.nvim" },
  -- dev = true,
  config = function()
    require("hydra").setup({
      hint = {
        type = "window",
        show_name = false,
        position = { "middle" },
      },
      on_enter = function()
        require("nougat").refresh_statusline(true)
      end,
      on_exit = function()
        vim.schedule(function()
          require("nougat").refresh_statusline(true)
        end)
      end,
    })
  end,
}
