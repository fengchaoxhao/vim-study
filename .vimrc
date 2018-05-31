" 运行时环境路径设置
set runtimepath+=~/.vim

" 设置显示行号
set number

" 设置主题 
colorscheme molokai

" 设定　Tab　键缩进的空格数
set tabstop=4

" 设定编辑器将多少个空格视为一个缩进
set shiftwidth=4

" 搜索时忽略大小写
set ic

" 开启语法
syntax enable

" 取消显示行号
" set nonumber

autocmd vimenter * NERDTree

" molokai 黑色背景
" let g:molokai_original = 1

" molokai 咖啡色背景
let g:rehash256 = 1

" 自定义快捷键
" 在插入模式下按Ctrl+l在当前行的下面插入一个空行
inoremap <C-l> <Esc>o

" 以下是vundle配置
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line

" 颜色主题插件
Plugin 'tomasr/molokai'

" 文件目录导航插件
Plugin 'scrooloose/nerdtree'

" git插件
Plugin 'Xuyuanp/nerdtree-git-plugin'

" java自动补全插件
Plugin 'artur-shaik/vim-javacomplete2'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 将vim自动补全的功能绑定到javacomplete插件上
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:SuperTabDefaultCompletionType = '<C-x><C-o>'

" 配置nerdtree插件开关
map <C-n> :NERDTreeToggle<CR>

" 配置git-plugin插件图标
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
