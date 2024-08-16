" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
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

" Enable auto completion menu after pressing TAB.
set wildmenu

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=number

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

call plug#begin('~/.vim/plugged')

	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim'

call plug#end()

nnoremap <c-down> <c-w>j
nnoremap <c-up> <c-w>k
nnoremap <c-left> <c-w>h
nnoremap <c-right> <c-w>l

" Window Resize
nnoremap <c-j> <c-w>v
nnoremap <c-k> <c-w>s

nnoremap <c--> <c-w>-
nnoremap <c-=> <c-w>=
nnoremap <c-_> <c-w>>
nnoremap <c-+> <c-w><

" HOW DO I EXIT VIM
nnoremap <c-c> :q! <CR>

" It's a force of habbit
nnoremap <c-s> :w <CR>

" Nerdtree
nnoremap <c-e> :NERDTreeToggle<CR>
nnoremap <c-f> :NERDTreeFind<CR>

" COC
" Using tab for complreting
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" IDK what this does for now
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Ctrl + Space for triggering completion
inoremap <silent><expr> <c-@> coc#refresh()
" Use /rn for renaming
nmap <leader>rn <Plug>(coc-rename)

nnoremap <c-c> :q! <CR>
