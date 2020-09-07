imap <silent> ` <C-X><C-O>
set completeopt=longest,menu

let mapleader = ";"

let $PLUGIN_DIR = "~/.vim/rc/plugin/"
let $PLUGIN_MOLOKAI = $PLUGIN_DIR.".vimrc_molokai"
let $PLUGIN_TREE = $PLUGIN_DIR.".vimrc_tree"
let $PLUGIN_TAGBAR = $PLUGIN_DIR.".vimrc_tagbar"
let $PLUGIN_GUIDES = $PLUGIN_DIR.".vimrc_guides"
let $PLUGIN_COMMENTER = $PLUGIN_DIR.".vimrc_commenter"
let $PLUGIN_ULTISNIPS = $PLUGIN_DIR.".vimrc_ultisnips"
let $PLUGIN_HTML5 = $PLUGIN_DIR.".vimrc_html5"
let $PLUGIN_JAVA = $PLUGIN_DIR.".vimrc_java"

let $SCRIPTS_JAVACOMPILE = "~/.vim/rc/scripts/.vimrc_javacompile"
let $SCRIPTS_JAVADEBUG= "~/.vim/rc/scripts/.vimrc_javadebug"

filetype on

set encoding=utf8

" 规避vi兼容问题
set nocompatible

set backspace=indent,eol,start

" 显示行号
set nu
" 相对行号
set relativenumber

set cursorline
set cursorcolumn

set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-startify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasr/molokai'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'asins/vim-dict'
Plugin 'jiangbai333/vim-javacomplete2'
Plugin 'SirVer/ultisnips'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()
filetype plugin indent on

" 引入插件配置文件
if filereadable(expand($PLUGIN_MOLOKAI))
    source $PLUGIN_MOLOKAI
endif

if filereadable(expand($PLUGIN_TREE))
    source $PLUGIN_TREE
endif

if filereadable(expand($PLUGIN_TAGBAR))
    source $PLUGIN_TAGBAR
endif

if filereadable(expand($PLUGIN_GUIDES))
    source $PLUGIN_GUIDES
endif

if filereadable(expand($PLUGIN_COMMENTER))
    source $PLUGIN_COMMENTER
endif

if filereadable(expand($PLUGIN_ULTISNIPS))
    source $PLUGIN_ULTISNIPS
endif

if filereadable(expand($PLUGIN_HTML5))
    source $PLUGIN_HTML5
endif

if filereadable(expand($PLUGIN_JAVA))
    source $PLUGIN_JAVA
endif

if filereadable(expand($SCRIPTS_JAVACOMPILE))
    source $SCRIPTS_JAVACOMPILE
endif

if filereadable(expand($SCRIPTS_JAVADEBUG))
    source $SCRIPTS_JAVADEBUG
endif
"autocmd BufWritePost $MYVIMPLUGIN source $MYVIMPLUGIN

" posva/vim-vue 文件检测
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
