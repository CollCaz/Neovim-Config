vim.opt.nu = true
vim.opt.relativenumber = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- NeoVide
if vim.g.neovide then
  vim.g.neovide_scale_factor = 0.6
  vim.g.neovide_padding_top = 20
  vim.g.neovide_padding_bottom = 20
  vim.g.neovide_padding_right = 20
  vim.g.neovide_padding_left = 20
  vim.o.guifont = "FiraCode Nerd Font Mono"

  vim.g.neovide_floating_blur_amount_x = 0.6
  vim.g.neovide_floating_blur_amount_y = 0.6

  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = true

  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_particle_lifetime = 2
  vim.g.neovide_cursor_vfx_particle_speed = 4.0
  vim.g.neovide_cursor_vfx_particle_density = 10
  vim.g.neovide_cursor_vfx_particle_phase = 20
  vim.g.neovide_cursor_vfx_particle_curl = 0.4
end
--vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- Vimwiki

vim.g.vimwiki_list = {
  {
    path = "/home/Documents/vimwiki",
    syntax = "markdown",
    ext = ".md",
  },
}
