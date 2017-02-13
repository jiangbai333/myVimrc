" 允许再vim编辑器中使用鼠标指针选定光标位置
set mouse=a

" 修改 leader 键
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" ii替换Esc
inoremap ii <Esc>

" 将 ; 映射到 : 快速进入命令行
nnoremap ; :

set nu
syntax on

set ts=4
set expandtab
set autoindent
"set foldmethod=indent
"au BufWinLeave * silent mkview
"au BufRead * silent loadview
"nnoremap <space> za


set pastetoggle=
