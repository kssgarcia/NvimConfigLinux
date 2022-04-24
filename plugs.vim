if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Style
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " CTRL + N for multiple cursors
Plug 'nvim-treesitter/playground' " Necessary to set treesitter
Plug 'hoob3rt/lualine.nvim' " Botom line of vim 
Plug 'https://github.com/norcalli/nvim-colorizer.lua'
Plug 'https://github.com/Yggdroot/indentLine' " Show line in indentention
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

" Assets utils
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'akinsho/toggleterm.nvim' " Display a terminal
Plug 'https://github.com/windwp/nvim-autopairs' " Display close brackets

" Git 
Plug 'lewis6991/gitsigns.nvim' " Git integration


" Lua setup
if has("nvim")
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
endif

" Lenguage support
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/dart-lang/dart-vim-plugin'
Plug 'https://github.com/tweekmonster/django-plus.vim'
Plug 'Vimjas/vim-python-pep8-indent'

" Navigation
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/jistr/vim-nerdtree-tabs'
Plug 'https://github.com/psliwka/vim-smoothie'
Plug 'nvim-telescope/telescope.nvim'

" Themes
Plug 'kaicataldo/material.vim'
Plug 'rose-pine/neovim'
Plug 'https://github.com/whatyouhide/vim-gotham'
Plug 'yunlingz/equinusocio-material.vim'
Plug 'https://github.com/AlessandroYorba/Despacio'
Plug 'gruvbox-community/gruvbox'
"Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

" Snippets
Plug 'SirVer/ultisnips' " Snippets support
Plug 'honza/vim-snippets' " Snippets support
Plug 'natebosch/dartlang-snippets' " Dart snippets

call plug#end()
