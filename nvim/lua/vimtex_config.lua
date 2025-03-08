vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'


return {
	"lervag/vimtex",
	init = function()
		vim.g.vimtex_view_method = 'zathura'
		vim.g.vimtex_view_general_viewer = 'zathura'
		vim.g.vimtex_compiler_method = 'latexmk'
		end,
	}



