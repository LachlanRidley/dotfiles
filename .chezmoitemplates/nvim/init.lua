-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- setup lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- packages
require("lazy").setup({
	"neovim/nvim-lspconfig",
	"loctvl842/monokai-pro.nvim",
	{	'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
      },
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-tree.lua",
      {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}
})

-- bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}

-- nvim-tree
require("nvim-tree").setup()

-- gitsigns
require('gitsigns').setup()

-- lua language server
require'lspconfig'.lua_ls.setup{}

-- vim config
vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd [[colorscheme monokai-pro]]

-- key bindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<c-o>", builtin.find_files, {})
