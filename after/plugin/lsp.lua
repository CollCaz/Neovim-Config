local lsp_zero = require("lsp-zero")

lsp_zero.set_sign_icons({
  error = "✘",
  warn = "▲",
  hint = "⚑",
  info = "»",
})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })

  --lsp_zero.buffer_autoformat()

  local opts = { buffer = bufnr, remap = false }

  local wk = require("which-key")
  wk.register({ ["gd"] = {
    function()
      vim.lsp.buf.definition()
    end,
    "Go To Definition",
  } })

  wk.register({ ["K"] = {
    function()
      vim.lsp.buf.hover()
    end,
    "Dislay Hover Information",
  } })

  wk.register({
    ["<leader>"] = {
      c = {
        name = "+Lsp",
        d = {
          function()
            vim.diagnostic.open_float()
          end,
          "Show Diagnostics",
        },
        a = {
          function()
            vim.lsp.buf.code_action()
          end,
          "Code Actions",
        },
        r = {
          function()
            vim.lsp.buf.rename()
          end,
          "Rename",
        },
        --l = {
        --  function()
        --    vim.lsp.buf.references()
        --  end,
        --  "List References",
        --},
      },
    },
  })
  ---@diagnostic disable-next-line: missing-parameter
  wk.register({
    ["<leader>vws"] = {
      function()
        vim.lsp.buf.workspace_symbol("")
      end,
      "List Workspace Symbols",
    },
  })
  vim.keymap.set("n", "[d", function()
    vim.diagnostic.goto_next()
  end, opts)
  vim.keymap.set("n", "]d", function()
    vim.diagnostic.goto_prev()
  end, opts)
  vim.keymap.set("i", "<C-h>", function()
    vim.lsp.buf.signature_help()
  end, opts)
end)
require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "marksman",
    "clangd",
    "yamlls",
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
require("lspconfig").ols.setup({})
require("lspconfig").csharp_ls.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").sqlls.setup({})
require("lspconfig").yamlls.setup({})
require("lspconfig").dartls.setup({})
require("lspconfig").gdscript.setup({})
require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      hint = {
        enable = true,
      },
      workspace = {
        checkThirdPary = false,
      },
    },
  },
})
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
---@diagnostic disable-next-line: missing-fields
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp_action.luasnip_supertab(),
    ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
  }),
})
