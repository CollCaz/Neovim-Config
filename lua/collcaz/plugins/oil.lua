return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("oil").setup()
    vim.keymap.set("n", "<leader>fe", "<cmd>Oil<cr>", { desc = "File Explorer" })
  end,
}
