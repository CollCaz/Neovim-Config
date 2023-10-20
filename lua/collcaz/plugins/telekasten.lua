return {
  "renerocksai/telekasten.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },

  config = function()
    require("telekasten").setup({
      home = vim.fn.expand("~/Notes"), -- Put the name of your notes directory here
    })
    local wk = require("which-key")
    wk.register({
      ["<leader>"] = {
        z = {
          f = { "<cmd>Telekasten find_notes<cr>", "Find Notes" },
          r = { "<cmd>Telekasten search_notes<cr>", "Search Notes" },
          n = { "<cmd>Telekasten new_note<cr>", "New Note" },
          z = { "<cmd>Telekasten follow_link<cr>", "Follow Link" },
          b = { "<cmd>Telekasten show_backlinks<cr>", "Show Backlinks" },
          c = { "<cmd>Telekasten show_calendar<cr>", "Show Calander" },
          d = { "<cmd>Telekasten goto_today<cr>", "Go To Today" },
          I = { "<cmd>Telekasten insert_image_link<cr>", "Insert Image Link" },
          i = { "<cmd>Telekasten insert_link<cr>", "Insert Link" },
        },
      },
    })
    --vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
  end,
}
