set nocompatible
set number
set showmatch
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set laststatus=2
set so=7
syntax on
set background=dark
set backspace=2
set cursorline


let mapleader=' '
map <leader>q :q!<CR>
map <leader>w :wq<CR>

"jump to windows
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l



filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'

call vundle#end() 
filetype plugin indent on


"about youcompleteme
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/.ycm_extra_conf.py'
"there are some same name file .ycm_extra_conf.py
"if it is a executable file,you will get a attributeerror
"
"
"you must set the file whose content include:
"flages=['-wall','wextra',xxxxxxx]
"this file must isn't a executable py file

let g:ycm_confirm_extra_conf=0
let g:ycm_complete_in_comments=1


"about nerdtree
"map <F2> :NERDTree<CR>
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

map <F4> :terminal<CR>

"about tagbar
map <F3> :TagbarToggle<CR>
let g:tagbar_width=30

"about indentLine
let g:indentLine_color_term = 239
"let g:indentLine_char = '|'



map <F5> :call CompileRunGCC()<CR>

func! CompileRunGCC()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "!./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -std=c++11 -o %<"
		exec "!./%<"
	endif
endfunc
