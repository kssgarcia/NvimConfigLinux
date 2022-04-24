if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding 
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'hoob3rt/lualine.nvim'
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " CTRL + N for multiple cursors
Plug 'nvim-treesitter/playground'
Plug 'https://github.com/Yggdroot/indentLine' 
Plug 'https://github.com/norcalli/nvim-colorizer.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'https://github.com/windwp/nvim-autopairs'
Plug 'https://github.com/dart-lang/dart-vim-plugin'
Plug 'https://github.com/tweekmonster/django-plus.vim'
Plug 'https://github.com/psliwka/vim-smoothie'

" Lua setup
if has("nvim")
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
endif

" Themes
Plug 'kaicataldo/material.vim'
Plug 'rose-pine/neovim'
Plug 'https://github.com/whatyouhide/vim-gotham'
Plug 'yunlingz/equinusocio-material.vim'
Plug 'https://github.com/AlessandroYorba/Despacio'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

call plug#end()
