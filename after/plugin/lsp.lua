local lsp_zero = require('lsp-zero')

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
  lsp_zero.buffer_autoformat()

  local opts = { buffer = bufnr, remap = false }

  local wk = require("which-key")
  wk.register({ ["gd"] = { function() vim.lsp.buf.definition() end, "Go To Definition" }, })

  wk.register({ ["K"] = { function() vim.lsp.buf.hover() end, "Dislay Hover Information" }, })

  wk.register({
    ["<leader>"] = {
      v = {
        name = "+Lsp",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
      },
    },
  })
  wk.register({ ["<leader>vws"] = { function() vim.lsp.buf.workspace_symbol("") end, "List Workspace Symbols" }, })
  --vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol("") end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "lua_ls",
    "marksman",
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
require 'lspconfig'.gdscript.setup {}
require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        checkThirdPary = false
      },
    },
  },
}
