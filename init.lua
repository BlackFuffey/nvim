-- setup lazy and plugins
require("lazy.lazy")

-- vim script configs
vim.cmd([[
	" Set fallback background color
	highlight Normal ctermbg=black
	set background=dark

	" Set theme
	colorscheme cyberdream

	" Enable line number
	set number
	set relativenumber

	" Enable auto indent
	set autoindent
	filetype plugin indent on
	set expandtab
	set shiftwidth=4

	" Syntax lighlighting
	syntax on

	" Use system clipboard
	set clipboard=unnamedplus

        " Use dynamic title
        set title
]])
