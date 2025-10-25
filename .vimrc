let mapleader = " "
"---------------------Options-------------------
set noexpandtab     " Do NOT convert TABs to spaces
set tabstop=4       " A TAB shows as 4 spaces (visual width)
set shiftwidth=4    " Indentation uses a real TAB
set softtabstop=4   " Pressing <Tab> inserts a real TAB
set cindent
" In your ~/.vimrc or a filetype plugin for C
autocmd FileType c set noexpandtab
set relativenumber
set ruler
set cursorline
set laststatus=2
set noerrorbells
set showcmd
set showmatch
set hlsearch
set showmode
set wildmenu
set cursorbind
set guicursor=n-v-c:block,i-ci:ver25,r-cr:hor20,o:hor50
"---------------------End Options-------------------

"-------------------Mode navigation--------------"
inoremap jk <Esc>
"-------------------End Mode navigation--------------"

"--------------------Yan--------------------------"
nnoremap yw yiw
"--------------------End Yan--------------------------"

"------------Window Navigation----------"
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
"------------End Window Navigation----------"

"--------------Deletion---------------------"
nnoremap cw ciw
nnoremap dw diw
nnoremap d{ di{
nnoremap d( di(
nnoremap d\' di\'
nnoremap d\" di\"
"-------------End Deletion---------------------"

"------------Colorscheme------------------"
colorscheme industry
hi Normal guibg=NONE ctermbg=NONE
"-------------End Colorscheme------------------"

"------------Explore--------------------------"
nnoremap <leader>e :Lexplore 30<CR>
nnoremap <leader>t :terminal <CR>
"-------------------End Explore--------------------"

"-------------------cancel the search heighlighting-----------------------"
nnoremap <silent> <leader>N :nohlsearch <CR>
"-------------------End Cancel the search heighlighting-----------------------"

"-------------------Buffers---------------------------------"
nnoremap <silent> <leader>n :bn<CR>
nnoremap <silent> <leader>p :bprevious<CR>
nnoremap <silent> <leader>d :bdelete <CR>
"-------------------Buffers---------------------------------"

"------------------Cursorline------------------------------------"
highlight CursorLine ctermbg=darkgrey guibg=darkgrey
"-----------------Edn Cursorline------------------------------------"

"------------------STATUS LINE ------------------------------- {{{
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
" }}}"-----------End Explore-----------------------"
