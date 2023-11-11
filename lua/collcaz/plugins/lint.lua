return {
  "mfussenegger/nvim-lint",
  event = {
    "BUfReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      gdscript = { "gdlint" },
      go = { "golangcilint" },
      --lua = { "luacheck" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lin", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        require("lint").try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>cl", function()
      lint.try_lint()
    end, { desc = "Lint Current File" })
  end,
}
