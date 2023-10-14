local builtin = require('telescope.builtin')

local wk = require("which-key")
wk.register({["<leader>ff"] = {"<cmd>builtin.find_files<cr>", "Find Files Using Telescope"},})
wk.register({
  ["<leader>"] = {
    f = {
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      b = { "<cmd>Telescope buffers<cr>", "Find Buffer" }, 
      s = { "<cmd>Telescope spell_suggest<cr>", "Suggest Spelling" }, 
    },
  },
})
