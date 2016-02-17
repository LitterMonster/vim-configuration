set autoindent
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch

set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                 "自动缩排
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set nu                        "可以在每一行的最前面显示行号
set bg=dark                   "显示不同的底色色调
syntax on                     "进行语法检验，颜色显示
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent

"######下面可根据自己的需要，可以不选用#############
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5   "打开支持编码的文件

"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

filetype plugin on                                            
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc 
"设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<cr>
"设置快速编辑.vimrc快捷键
map <silent> <leader>ee :e ~/.vimrc<cr>          
"禁用VI兼容模式 
set nocompatible     
"Vim 的内部编码
set encoding=utf-8         
"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8          
"Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8     
"Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1 

"格式化高亮
syntax on
"显示行号
set nu
"括号匹配
set showmatch
"自动检测文件类型
filetype plugin indent on 
"在缩进和遇到 Tab 键时使用空格替代
set expandtab

"根据文件类型设置缩进格式
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
" 启动vim时不要自动折叠代码
set foldlevel=100  
"自动对齐       
set ai   
"依据上面的对起格式
set si  
set smarttab
set wrap
set lbr
set tw=0
set foldmethod=syntax

"Sets how many lines of history VIM har to remember
set history=400
" Set to auto read when a file is changed from the outside
set autoread
" Have the mouse enabled all the time:
set mouse=a
" Do not redraw, when running macros.. lazyredraw
set lz
" set 7 lines to the curors - when moving vertical..
set so=7
" The commandbar is 2 high
set cmdheight=2
" Change buffer - without saving
set hid
" Ignore case when searching
set ignorecase
set incsearch
" Set magic on
set magic
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
" How many tenths of a second to blink
set mat=4
" Highlight search things
set hlsearch
" Turn backup off
set nobackup
set nowb
set noswapfile
" smart backspace
set backspace=start,indent,eol
" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>

let Tlist_Ctags_Cmd = '/usr/bin/ctags'

"只显示当前文件的
let Tlist_Show_One_File = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口配置好以后
let Tlist_Use_Right_Window = 1
map <silent> <F9> :TlistToggle<cr> 

let g:bufExplorerDefaultHelp=0  " Do not show default help.
let g:bufExplorerShowRelativePath=1 " Show relative paths.
let g:bufExplorerSortBy='mru'     " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30 " Split width
let g:bufExplorerUseCurrentWindow=1 " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 

let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 

let g:SuperTabDefaultCompletionType = ""

set cc=81
cnoremap<expr> %% getcmdtype()==':'?expand('%:h').'/':'%%'
