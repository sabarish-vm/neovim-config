--
--
--  undotree plugin
return {
  {
    "mbbill/undotree", -- Plugin name (GitHub repository)
    cmd = "UndotreeToggle", -- Command to toggle the undotree
    keys = {
      { "<leader>uu", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    },
    opts = {
      -- Additional options (if needed)
    },
  },
}
