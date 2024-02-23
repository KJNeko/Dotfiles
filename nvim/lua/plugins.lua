

vim.cmd [[packadd packer.nvim]]

local startup = require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'

	-- Text-Complete
	use 'hrsh7th/nvim-cmp' -- Core text-complete
	use 'lukas-reineke/cmp-rg' -- Expands for ripgrep
	use 'hrsh7th/cmp-nvim-lsp' -- Provides source for lsp
	--use 'onsails/lspkind.nivm' -- TODO: Figure out why this can't be installed

	-- Glorified Text-Complete (AI)
	use 'zbirenbaum/copilot.lua' --Github Copilot

	-- Notifications
	use 'rcarriga/nvim-notify' -- Notification/Toast system

	-- Helpers
	use 'folke/which-key.nvim'

	-- C++
	use 'mfussenegger/nvim-lint' -- Language server linter


	-- File trees
	
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() 
			local ts_update = require('nvim-treesitter.install').update({with_sync = true})
			ts_update()
		end,
	} -- Filesystem trees
	
	use 'nvim-telescope/telescope.nvim' -- File search

	use 'lewis6991/gitsigns.nvim'

	
	use 'L3MON4D3/LuaSnip' -- Snippet helper

	use 'lervag/vimtex'


end)

-- Config setups
require("cmp_config")
return startup

