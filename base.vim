" ruby provider
" let g:ruby_host_prog = '/home/fengwk/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'

" filetype on
" filetype indent on
" filetype plugin on
" filetype plugin indent on

" 修正leader键映射为\
let mapleader="\\"

" 语法高亮
" syntax on
" autocmd 关闭指定后缀文件的语法高亮
autocmd BufNewFile,BufRead *.json,*.md exec 'syntax off'

" 设置编码
set encoding=utf-8

" 开启行号显示
set nu
" 开启相对行号
set rnu

" 设置超出长度显示换行
set wrap

" 滚动时保持上下边距
" set scrolloff=5
" 该设置可以将光标定位到窗口中间位置
set scrolloff=999

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
" set showmatch

" 在右下角显示已输入的命令
" neovim下无需该配置
" set showcmd

" 设置命令模式tab补全
set wildmenu

" 高亮所有搜索到的内容
set hlsearch
" 避免新打开文件时还有高亮
exec "nohlsearch"
" 使用Ctrl+l清除高亮
" nmap <silent> <C-l> :noh<CR>
nmap <silent> <c-n> :noh<CR>

" 边搜索边高亮
set incsearch

" 忽略大小写，ignorecase可以简写为ic
" set ignorecase
" 智能大小写忽略，如果直接能够找到单词则不忽略大小写，否则忽略大小写
" set smartcase

" 指定vim中显示的制表符宽度
set tabstop=4
" 指定tab键宽度
set softtabstop=4
" 设置 >> << == 时的缩进宽度
set shiftwidth=4
" 使用空格进行缩进
set expandtab
" 设置换行自动缩进
set autoindent

" 设置特殊符号显示
" :set list         显示非可见字符
" :set nolist       隐藏非可见字符
" :set listchars    设置非可见字符的显示模式
set list
" tab        制表符
" trail      行末空格
" precedes   左则超出屏幕范围部分
" extends    右侧超出屏幕范围部分
set listchars=tab:>-,trail:·,precedes:«,extends:»,

" 使用系统剪切板作为无名寄存器
set clipboard=unnamed

" map s <nop>
" map S <nop>

" split window
nnoremap <silent><a-w>h :set nosplitright<cr>:vs<cr>
nnoremap <silent><a-w>l :set splitright<cr>:vs<cr>
nnoremap <silent><a-w>k :set nosplitbelow<cr>:sp<cr>
nnoremap <silent><a-w>j :set splitbelow<cr>:sp<cr>
nnoremap <silent><c-w>= :res +5<cr>
nnoremap <silent><c-w>- :res -5<cr>
nnoremap <silent><c-w>== :vertical res +5<cr>
nnoremap <silent><c-w>-- :vertical res -5<cr>
" nnoremap <left> :vertical resize-5<cr>
" nnoremap <right> :vertical resize+5<cr>

" 使用Ctrl+s保存缓冲区
" inoremap <C-s> <Esc>:w<CR>gi
" nnoremap <C-s> :w<CR>
" 使用Ctrl+q退出
" nnoremap <C-q> :q<CR>

" quick down
nnoremap <c-j> 5j
vnoremap <c-j> 5j
" quick up
nnoremap <c-k> 5k
vnoremap <c-k> 5k
" quick left
nnoremap <c-h> 5h
vnoremap <c-h> 5h
" quick right
nnoremap <c-l> 5l
vnoremap <c-l> 5l

" 重新打开时光标定位到退出时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 将光标所在单词替换为寄存器中内容
nnoremap tr "_diwP
" 快速将内容复制到系统剪切板
nnoremap ty "+y
vnoremap ty "+y
