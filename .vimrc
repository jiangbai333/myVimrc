let mapleader = ","     " Leader ,

set nu                  " 显示行号
"syntax on              " 高亮显示
set nowrap              " 禁止折行

" 快捷键映射
"nmap LB 0              " 转至行首
"nmap LF ^              " 转至改行第一个非空字符
"nmap LE $              " 转至行尾

" 缩进与制表
set ts=4                " 缩进一次四个空字符
set expandtab           " 缩进以空格替换
set autoindent          " 自动缩进
set shiftwidth=4        " 格式化时制表符占用的空格数
set softtabstop=4       " 把连续4个空格视为一个制表符

" 光标指示器
set cursorline          " 光标所在行
" highlight CursorLine   cterm=NONE ctermbg=NONE ctermfg=Red guibg=Blue guifg=Green
set cursorcolumn        " 光标所在列
set ruler               " 标尺?

" 字体 GUI 下有效
"set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 搜索
set incsearch           " 实时搜索 键入时光标跳转到当前的最优匹配
set ignorecase          " 大小写不敏感搜索

set foldmethod=syntax
set nofoldenable

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'           " 注释选中文本<Leader>cc 取消选中文本注释<Leader>cu
Plugin 'nathanaelkane/vim-indent-guides'    " 缩进标识插件
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

" 安装插件写在这之前
call vundle#end()           " required
filetype plugin on          " required

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" h: vundle         - 获取帮助

" vundle的配置到此结束

"autocmd Filetype java set omnifunc=javacomplete#Complete          
"autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf 
"inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
"inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
""autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P>
"
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]   "显示文件名：总行数，总的字符数  
"set ruler                                                   "在编辑过程中，在右下角显示光标位置的状态行  
""set nocompatible   "开启vi兼容模式
"filetype off        " required
"
""let mapleader = "\<space>"     "修改 leader 键
""et g:mapleader = "\<space>"    "修改 leader 键
"
"inoremap ii <Esc>               "ii替换Esc
"nnoremap ; :                    "将 ; 映射到 : 快速进入命令行
"
"set pastetoggle=<F11>           "将paste映射至F11,当从外部粘帖时开启,防止格式混乱
"
""set mouse=a
"""set foldmethod=indent
"""au BufWinLeave * silent mkview
"""au BufRead * silent loadview
"""nnoremap <space> za
"
""inoremap <C-]>             <C-X><C-]>
""inoremap <C-F>             <C-X><C-F>
""inoremap <C-D>             <C-X><C-D>
""inoremap <C-L>             <C-X><C-L> 

""""""""""""
"guides配置"
""""""""""""
" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

""""""""""""""
"NERDTree配置"
""""""""""""""
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
map <F2> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

""""""""""""""
" tagbar 配置"
""""""""""""""
" 子窗口的位置出现在主编辑区的左边
let tagbar_right=1                       
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
map <F3> :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32                     
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1                  
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {               
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

