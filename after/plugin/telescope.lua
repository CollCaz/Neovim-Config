local builtin = require('telescope.builtin')

require("telescope").load_extension "file_browser"

local wk = require("which-key")
wk.register({ ["<leader>ff"] = { "<cmd>builtin.find_files<cr>", "Find Files Using Telescope" }, })
wk.register({
  ["<leader>"] = {
    f = {
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      e = { "<cmd>Telescope file_browser<cr>", "File Browser" },
      r = { "<cmd>Telescope oldfiles<cr>", "Find Recent File" },
      b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
      s = { "<cmd>Telescope spell_suggest<cr>", "Find Correct Spelling" },
      g = { "<cmd>Telescope grep_string<cr>", "Find Word Under Cursor" },
      l = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    },
  },
})
