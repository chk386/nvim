syntax enable               " syntax highlighting
" set script encoding
scriptencoding utf-8

set title
set hidden
set history=1000
set encoding=UTF-8
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set number relativenumber   " add line number
set mouse=a                 " enable mouse click
set mouse=v                 " middle-click paste with
set cmdheight=2
set nopaste
set tags=~./tags
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set signcolumn=yes

set ruler

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=
set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
" Add asterisks in block comments
set formatoptions+=r

" Search Setting
set ignorecase              " case insensitive 
set smartcase
set hlsearch                " highlight search 
set incsearch               " incremental search


" Indent
set autoindent
set laststatus=2
set scrolloff=10
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set wildmode=list:full                " get bash-like tab completions
set completeopt=menuone,preview
"set wildmode=longest,full   " get bash-like tab completions
set wildoptions=pum,tagfile
set showcmd
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim

" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
set backupdir=~/.config/nvim/tmp/* " Directory to store backup files.

set nobackup                " This is recommended by coc
set nowritebackup           " This is recommended by coc

" open new split panes to right and below
set splitright
set splitbelow

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" 현재 파일 위치로 pwd변경
autocmd BufEnter * silent! lcd %:p:h

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline              " highlight current cursorline
" Set cursor line color on visual mode
"highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
"highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
"}}}


runtime ./maps.vim
runtime ./plug.vim

set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()

"default, palenight, ocean, lighter, and darker
"let g:material_theme_style = 'darker'
"let g:material_terminal_italics = 1
let g:airline_theme = 'jellybeans'

" gruvbox, material
colorscheme gruvbox 
" soft, dark, light
set background=dark
" force background color black
hi Normal ctermbg=16 guibg=#000000


lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
EOF

