" Dependencies
" fzf https://github.com/junegunn/fzf

" Package manager {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'ntpeters/vim-better-whitespace'
Plug 'godlygeek/tabular'
Plug 'ngmy/vim-rubocop'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'ianks/vim-tsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-syntastic/syntastic'
Plug 'tomasr/molokai'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
call plug#end()
" }}}


" Editing {{{
filetype plugin indent on
set autoindent
set formatoptions=cjqrn1
set textwidth=120
" }}}}

" Syntax highlighting {{{
syntax on
colorscheme molokai
" }}}

" NERDTree {{{
nmap <leader>d :NERDTreeToggle<CR>
" }}}


" Whitespace handling {{{
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
" }}}

" Remaps {{{
inoremap jk <Esc>
nmap cp :let @" = expand("%")<cr>
" }}}

" Visual {{{
set colorcolumn=120
set cursorline
set number
" }}}
