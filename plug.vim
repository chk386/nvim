call plug#begin(stdpath('data')."/plugged")

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'

" https://github.com/preservim/nerdtree#nerdtree-plugins
Plug 'preservim/nerdtree' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons' " icon
Plug 'PhilRunninger/nerdtree-visual-selection'

"git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" Theme
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'glepnir/oceanic-material'

Plug 'Raimondi/delimitMate'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'blueyed/vim-diminactive'


" IDE
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" npm install coc-snippets coc-python coc-tsserver coc-html coc-css coc-json coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'


" Debug
Plug 'puremourning/vimspector'
Plug 'liuchengxu/vista.vim'


" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'mhinz/vim-startify' " vim 초기화면

" wiki
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()


