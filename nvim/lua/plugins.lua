local status, packer = pcall(require, 'packer')
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'svrana/neosolarized.nvim',
		requires = { 'tjdevries/colorbuddy.nvim' }
	}
	use 'kyazdani42/nvim-web-devicons'
	use 'glepnir/lspsaga.nvim' -- LSP UIs
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'L3MON4D3/LuaSnip' -- Snippet
	use 'onsails/lspkind-nvim' -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp' -- Completion
	use 'neovim/nvim-lspconfig' -- LSP Config
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'jose-elias-alvarez/null-ls.nvim' -- use neovim as a language server to inject LSP diagnostics, code actions, and morevia lua.
	use 'MunifTanjim/prettier.nvim' -- Prettier plugin for neovim's built-in LSP client
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'akinsho/nvim-bufferline.lua'
	use 'norcalli/nvim-colorizer.lua'
	use 'lewis6991/gitsigns.nvim'
	use 'dinhhuy258/git.nvim' -- For git blame
	use {
		'phaazon/hop.nvim',
		branch = 'v2' -- optional but strongly recommended
	}
end)
