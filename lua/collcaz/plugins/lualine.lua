return {
  "nvim-lualine/lualine.nvim",
  requires = { "nvim-tree/nvim-web-devicons", opt = true },

  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-mocha",
      },
      sections = {
        lualine_x = {
          {
            require("noice").api.statusline.mode.get,
            cond = require("noice").api.statusline.mode.has,
            color = { fg = "#ff9e64" },
          },
          "fileformat",
          "filetype",
          --"encoding",
        },
      },
    })
  end,
}
