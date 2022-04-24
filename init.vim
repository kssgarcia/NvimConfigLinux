" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set number
set relativenumber
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set expandtab
set laststatus=2 
set scrolloff=10
"let loaded_matchparen = 1
set backupskip=/tmp/*,/private/tmp/*
set mouse=a

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set guicursor+=a:-Cursor-blinkwait145-blinkoff120-blinkon145
set cursorline

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

" Imports "{{{
" ---------------------------------------------------------------------

runtime ./plugs.vim
runtime ./coc.vim
runtime ./maps.vim
"}}}

let mapleader = " "

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeTabsToggle<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

" Syntax theme "{{{
" ---------------------------------------------------------------------
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  "let g:neosolarized_termtrans=1
  "runtime ./colors/NeoSolarized.vim
  colorscheme gruvbox
  let g:material_theme_style = 'ocean'
  hi Normal guibg=NONE ctermbg=NONE
endif
"}}}

let g:NERDTreeDirArrowExpandable=""
let g:NERDTreeDirArrowCollapsible=""

" Treesitter
lua require'nvim-treesitter.configs'.setup { highlight = {enable = true} }


" Auto pairs
lua require('nvim-autopairs').setup{}

" Python provider
let g:python39_host_prog = 'C:\Users\57312\AppData\Local\Programs\Python\Python39\python.exe'
let g:loaded_python39_provider = 'C:\Users\57312\AppData\Local\Programs\Python\Python39'

" Python indentation
let g:python_pep8_indent_multiline_string=1
