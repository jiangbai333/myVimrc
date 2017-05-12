set nu              "显示行号
syntax on           "高亮显示

set ts=4            "缩进一次四个空字符
set expandtab       "缩进以空格替换
set autoindent      "自动缩进

set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]   "显示文件名：总行数，总的字符数  
set ruler                                                   "在编辑过程中，在右下角显示光标位置的状态行  
"set nocompatible   "开启vi兼容模式
filetype off        " required

"let mapleader = "\<space>"     "修改 leader 键
"et g:mapleader = "\<space>"    "修改 leader 键

inoremap ii <Esc>               "ii替换Esc
nnoremap ; :                    "将 ; 映射到 : 快速进入命令行

set pastetoggle=<F11>           "将paste映射至F11,当从外部粘帖时开启,防止格式混乱

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"taglist
Bundle 'taglist.vim'
let Tlist_Ctags_Cmd = '/root/ctags-5.6/ctags'       "设定Linux系统中ctags程序的位置
let Tlist_Show_One_File=1                           "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1                         "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1                      "在右侧窗口中显示taglist窗口
let Tlist_Auto_Open=1                               "在启动VIM后，自动打开taglist窗口
let Tlist_WinWidt =30                               "窗口宽度

"nerdtree
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'                          "窗口放在右侧
let NERDTreeWinSize=30                              "窗口宽度
map <F2> :NERDTreeToggle<CR>                        "切换隐藏显示f2


" 安装插件写在这之前
call vundle#end()           " required
filetype plugin on          " required

set tags=/home/baichao/maven/baiduMap/tags 

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" h: vundle         - 获取帮助

" vundle的配置到此结束，下面是你自己的配置



"set mouse=a
""set foldmethod=indent
""au BufWinLeave * silent mkview
""au BufRead * silent loadview
""nnoremap <space> za

"inoremap <C-]>             <C-X><C-]>
"inoremap <C-F>             <C-X><C-F>
"inoremap <C-D>             <C-X><C-D>
"inoremap <C-L>             <C-X><C-L> 
