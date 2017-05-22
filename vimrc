set nocompatible
filetype off " required for Vundle

" Vundle initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on
" End of Vundle

" Always show powerline
set laststatus=2
let g:airline_powerline_fonts = 1

" Oh god...
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
