filetype plugin indent on

syntax enable

if empty(v:servername) && exists('*remote_startserver')
	call remote_startserver('VIM')
endif

filetype plugin indent on

set clipboard=unnamedplus

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'


nnoremap <c-z> <nop>


