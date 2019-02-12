" 屏蔽方向键，强制使用 hjkl 做基础移动
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" tab键自动补全
" imap <silent> <tab> <C-X><C-O>
" ` 键自动补全
imap <silent> ` <C-X><C-O>
" 最优匹配
set completeopt=longest,menu

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
let $PLUGIN_ULTISNIPS = $PLUGIN_DIR.".vimrc_ultisnips"
let $PLUGIN_HTML5 = $PLUGIN_DIR.".vimrc_html5"
let $PLUGIN_JAVA = $PLUGIN_DIR.".vimrc_java"

" 编译脚本配置文件目录
let $SCRIPTS_JAVACOMPILE = "~/.vim/rc/scripts/.vimrc_javacompile"
let $SCRIPTS_JAVADEBUG= "~/.vim/rc/scripts/.vimrc_javadebug"

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

" 设置backspace的工作方式
set backspace=indent,eol,start

" 禁止折行
" set nowrap

" 光标举例顶端底端最少5行
set scrolloff=5

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

" 效率
Plugin 'scrooloose/nerdtree' "目录
Plugin 'Xuyuanp/nerdtree-git-plugin' "git显示支持
Plugin 'majutsushi/tagbar' "tagbar

" 显示&颜色
Plugin 'posva/vim-vue' " Vue 高亮插件
Plugin 'mhinz/vim-startify' "欢迎页面
Plugin 'nathanaelkane/vim-indent-guides' "显示缩进
Plugin 'tomasr/molokai' "主题配色
Plugin 'ryanoasis/vim-devicons' "添加文件图标
Plugin 'cakebaker/scss-syntax.vim' " Scss语法标注

" 便捷
Plugin 'terryma/vim-multiple-cursors' "多游标，多行编辑
Plugin 'scrooloose/nerdcommenter' "代码注释 ;cc添加注释 ;cu取消注释 

" 补全
Plugin 'asins/vim-dict' "字典补全<C-k>
Plugin 'othree/html5.vim' " HTML5 自动补全
Plugin 'jiangbai333/vim-javacomplete2' " Java 自动补全
Plugin 'SirVer/ultisnips' "重复内容 模板补全 git clone https://github.com/honza/vim-snippets.git snp && mv snp/UltiSnips ~/.vim/bundle/ultisnips/usp && rm -rf snp

" GIT
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/gv.vim'

" markdown
Plugin 'gabrielelana/vim-markdown'

" vim wiki
"Plugin 'vimwiki/vimwiki'
"Plugin 'mattn/calendar-vim'

"Plugin 'prettier/vim-prettier' "代码美化
"Plugin 'ervandew/screen' " screen 分屏 存在使用缺陷，暂时禁用

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
