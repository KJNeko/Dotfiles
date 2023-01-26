filetype plugin indent on

syntax enable

let g:tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat = 'pdf'

if empty(v:servername) && exists('*remote_startserver')
	call remote_startserver('VIM')
endif

filetype plugin indent on

set clipboard=unnamedplus
