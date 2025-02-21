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
	"lewis6991/gitsigns.nvim",
	"nvim-tree/nvim-tree.lua",
	{ "stevearc/conform.nvim", opts = {} },
	"RRethy/base16-nvim",
})

-- nvim-tree
require("nvim-tree").setup()

-- gitsigns
require("gitsigns").setup()

-- lua language server
require("lspconfig").pyright.setup({})
require("lspconfig").ruff_lsp.setup({})
require("lspconfig").jedi_language_server.setup({})
require("lspconfig").rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
		},
	},
})
require("lspconfig").eslint.setup({})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		scss = { "stylelint" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 1000,
		lsp_format = "fallback",
	},
})

-- colour scheme
vim.cmd("colorscheme base16-monokai")

-- tabs
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
