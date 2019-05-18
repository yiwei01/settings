" show line numbers, use <F2> to switch
nnoremap <F2> :set norelativenumber!<CR>:set nonumber!<CR>
set number
set relativenumber

" tab size
set tabstop=4

" regard multiple spaces as tab
set softtabstop=4

" let tab become space
set expandtab

" indent size
set shiftwidth=4

" auto indent
set autoindent
set smartindent

" map ctrl + a to ggVG
nnoremap <C-a> ggVG

" tab indent
vmap <TAB> >gv
vmap <S-TAB> <gv

" let line cannot wrap
set nowrap

" highlight curent line
set cursorline

" highlight search result
set hlsearch

" show result before typing finished
set incsearch

" ignore case
set ignorecase

" delay
set ttimeoutlen=100
   
" command abbreviate "
cnoreabbrev WQ wq
cnoreabbrev Wq wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev db bd

" move among split windows
nnoremap <silent> <C-Right> <C-w>l
nnoremap <silent> <C-Left>  <C-w>h
nnoremap <silent> <C-Up>    <C-w>k
nnoremap <silent> <C-Down>  <C-w>j

" return to last edit position when opening files
autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line('$') |
        \   exe "normal! g`\"" |
        \ endif

" let cursor in the middle of screen when entering vim
autocmd VimEnter * :exec "normal! \zz"

" plugin config
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize "
call plug#begin('~/.vim/plugged')
" 插件和設定放這裡(設定也可以放外面) "
Plug 'vim-airline/vim-airline' " 狀態列 "
Plug 'iamcco/markdown-preview.vim' " Markdown 即時預覽 "
" Plug 'scrooloose/nerdtree' " 直接複製 github 作者/插件名 "
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

call plug#end()
filetype plugin indent on


