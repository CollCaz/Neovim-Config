vim.g.mapleader = " "

local wk = require("which-key")
wk.register({
  ["<leader>"] = {
    f = {
      name = "+File",
      n = { "<cmd>enew<cr>", "New File" },
    },
    g = {
      name = "+Git",
  },
}
})
