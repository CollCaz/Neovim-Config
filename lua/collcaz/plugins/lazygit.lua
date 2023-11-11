return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>"] = {
        g = {
          g = { "<cmd>LazyGit<cr>", "LazyGit" },
        },
      },
    })
  end,
}
