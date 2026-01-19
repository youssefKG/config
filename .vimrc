let mapleader = " "

"----------------------------Plugin manager---------------"

call plug#begin()
" List your plugins here
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'jiangmiao/auto-pairs'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" post install (yarn install | npm install) then load plugin only for editing
" supported files
Plug 'prettier/vim-prettier', {
   \ 'do': 'yarn install --frozen-lockfile --production',
     \ 'for': ['javascript', 'typescript', 'css', 'typescriptreact', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()

"----------------------------Plugin manager---------------"

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
set noswapfile
set scrollbind
set clipboard=unnamedplus
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
colorscheme gruvbox-material 
set background=dark
hi Normal guibg=NONE ctermbg=NONE
"-------------End Colorscheme------------------"

"------------Explore--------------------------"
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>t :terminal <CR>
"-------------------End Explore--------------------"

"-------------------cancel the search heighlighting-----------------------"
nnoremap <silent> <leader>N :nohlsearch <CR>
"-------------------End Cancekl the search heighlighting-----------------------"

"-------------------Buffers---------------------------------"
nnoremap <silent> <leader>n :bn<CR>
nnoremap <silent> <leader>p :bprevious<CR>
nnoremap <silent> <leader>d :bdelete <CR>
"-------------------Buffers---------------------------------"
"
"--------------------TERMINAL--------------------------------"
nnoremap <silent> <leader>t :FloatermToggle <CR>
tnoremap <silent> <leader>t <c-w>N:FloatermToggle <CR>
tnoremap <silent> jk <c-w>N<CR>
"--------------------END TERMINAL--------------------------------"

"------------------Cursorline------------------------------------"
highlight CursorLine ctermbg=darkgrey guibg=darkgrey
"-----------------Edn Cursorline------------------------------------"

"--------------------------Fuzzy Finder -----------------------"
nnoremap <silent> <leader><leader> :CtrlP . <CR>
"--------------------------End Finder -----------------------"

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

"------------------------------Markdown previw---------------"
"----------------------------formatter--------------------"
au FileType css,scss,jsx,tsx,ts,js,css,html,json  let b:prettier_exec_cmd = "prettier-stylelint"
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.json,*.css,*.html,*.md Prettier

"----------------------------formatter--------------------"
