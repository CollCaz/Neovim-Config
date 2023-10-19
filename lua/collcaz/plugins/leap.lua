return {
  "ggandor/leap.nvim",

  dependicies = { "tpope/vim-repeat" },

  config = function()
    require("leap").add_default_mappings()
  end,
}
