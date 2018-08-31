" 屏蔽方向键，强制使用 hjkl 做基础移动
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"解决consle输出乱码
"language messages zh_CN.utf-8

" <leader>
let mapleader = ";"

" 子配置文件目录
let $PLUGIN_DIR = "~/.vim/rc/plugin/"
let $PLUGIN_MOLOKAI = $PLUGIN_DIR.".vimrc_molokai"
let $PLUGIN_TREE = $PLUGIN_DIR.".vimrc_tree"
let $PLUGIN_TAGBAR = $PLUGIN_DIR.".vimrc_tagbar"
let $PLUGIN_GUIDES = $PLUGIN_DIR.".vimrc_guides"
let $PLUGIN_COMMENTER = $PLUGIN_DIR.".vimrc_commenter"
let $PLUGIN_ULTISNIPS= $PLUGIN_DIR.".vimrc_ultisnips"

" 开启文件类型检测
filetype on

"set encoding=utf-8

"set fileencodings=utf-8,chinese,latin-1

"if has("win32")
"    set fileencoding=chinese
"else
"    set fileencoding=utf-8
"endif

"解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

" 规避vi兼容问题
set nocompatible

" 设置backspace的工作方式： 
set backspace=indent,eol,start

" 禁止折行
set nowrap

" 开启paste 防止外部粘贴出现格式混乱
set pastetoggle=<F11>

" 显示行号
set nu
" 相对行号
set relativenumber

" 代码折叠 manual,indent,expr,syntax,diff,marker
"set foldmethod = indent

" 行列位置突出显示
set cursorline
set cursorcolumn

" 状态栏
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 将制表符扩展为空格
set expandtab
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai' "主题配色
Plugin 'scrooloose/nerdtree' "目录
Plugin 'Xuyuanp/nerdtree-git-plugin' "git显示支持
Plugin 'majutsushi/tagbar' "tagbar
Plugin 'nathanaelkane/vim-indent-guides' "显示缩进
Plugin 'scrooloose/nerdcommenter' "代码注释 ;cc添加注释 ;cu取消注释 
Plugin 'SirVer/ultisnips' "重复内容 模板补全 git clone https://github.com/honza/vim-snippets.git snp && mv snp/UltiSnips ~/.vim/bundle/ultisnips/usp && rm -rf snp
Plugin 'posva/vim-vue' " Vue 高亮插件

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

"autocmd BufWritePost $MYVIMPLUGIN source $MYVIMPLUGIN
