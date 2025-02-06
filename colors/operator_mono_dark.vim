" Vim color file
" Maintainer: Kolton Musgrove
" Last Change: 2025-02-06

set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "operator_mono_dark"

lua << EOF
require('operator-mono-dark').setup()
EOF
