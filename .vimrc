" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable filetype detection.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Show the numbers and the signs in the same column
set number
set signcolumn=number

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Initialize plugin manager
call plug#begin('~/.vim/plugged')

    " Plugins
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Vue.js support
    Plug 'neoclide/coc-vetur'
    
    " Rust support
    Plug 'neoclide/coc-rls'
    
call plug#end()

" NERDTree
nnoremap <c-e> :NERDTreeToggle<CR>
nnoremap <c-f> :NERDTreeFind<CR>

" Coc.nvim mappings
nmap <silent> [c <Plug>(coc-definition)
nmap <silent> ]c <Plug>(coc-references)

" Auto-completion triggers
set completeopt=menuone,noinsert,noselect

" Map <C-Space> to trigger completion with the currently selected item
inoremap <silent><expr> <C-Space> pumvisible() ? "\<C-n>" :
      \ CocAction('showCompletionItemMenu')

" Exit Vim
nnoremap <leader>q :q!<CR>
