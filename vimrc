" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Plugin 'vundle'
Bundle 'nerdtree'
Bundle 'vim-easymotion'
Bundle 'vim-yankstack'
Bundle 'nerdcomment'
Bundle 'vim-indent-guides'

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.

if has("syntax")
	syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set number
set autoindent
set undofile
set wrap
set directory^=$HOME/.vim/swap/ "all swap files in one place
set undodir=~/.vim/undodir "keeps undo histroy
set undofile


inoremap jj <ESC>
inoremap kk <ESC>




" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
 source /etc/vim/vimrc.local
endif

