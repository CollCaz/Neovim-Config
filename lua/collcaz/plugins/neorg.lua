return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
            name = "[Neorg]",
          },
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/Neotes/notes",
              Tesseract = "~/Neotes/Tesseract",
            },
          },
        },
      },
    })
  end,
}
