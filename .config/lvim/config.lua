-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("v", "p", '"_dP', opts)


lvim.plugins = {
  {"Mofiqul/dracula.nvim"},
  {"Pocco81/auto-save.nvim"},
}

lvim.colorscheme = "dracula"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
