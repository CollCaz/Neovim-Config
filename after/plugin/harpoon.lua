---@diagnostic disable: unused-local
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local wk = require("which-key")
wk.register({["<leader>a"] = {"<cmd>mark.add_file<cr>", "Mark file for Harpoon"},})
wk.register({["<C-e>"] = {"<cmd>ui.toggle_quick_menu<cr>", "Harpoon quick menu"},})

-- Go back to primagen if this isn't fast enought
