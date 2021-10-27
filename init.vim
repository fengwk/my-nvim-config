" 安装插件
" https://github.com/junegunn/vim-plug
" 保存重新进入执行安装命令 PlugInstall
call plug#begin('~/.config/nvim/plugged')

" airline 状态栏
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" snazzy 配色方案
" https://github.com/connorholyday/vim-snazzy
Plug 'connorholyday/vim-snazzy'

" deus 配色
Plug 'theniceboy/nvim-deus'

" indentline 缩进线
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

" nerdtree 文件树
" https://github.com/preservim/nerdtree
" 快捷键 https://www.cnblogs.com/qiumingcheng/p/6275510.html
Plug 'preservim/nerdtree'

" fzf.vim
" https://github.com/junegunn/fzf.vim
" 使用技巧 https://zhuanlan.zhihu.com/p/41859976
Plug 'junegunn/fzf.vim'

" vim-go
" https://github.com/fatih/vim-go
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" coc.nvim
" https://github.com/neoclide/coc.nvim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fcitx.vim
" https://github.com/lilydjwg/fcitx.vim
Plug 'lilydjwg/fcitx.vim'

" markdown-preview.nvim
" https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" tabular
" https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

call plug#end()

" " coc.nvim
" " coc-java 解决 jdt 不可用
" " https://blog.csdn.net/lxyoucan/article/details/115460229
" let g:coc_global_extensions = [
"  \ 'coc-snippets',
"  \ 'coc-vimlsp', 
"  \ 'coc-sh',
"  \ 'coc-cmake',
"  \ 'coc-clangd',
"  \ 'coc-python',
"  \ 'coc-go',
"  \ 'coc-java',
"  \ 'coc-html',
"  \ 'coc-css',
"  \ 'coc-tsserver',
"  \ 'coc-vetur',
"  \ 'coc-svg',
"  \ 'coc-sql',
"  \ 'coc-json',
"  \ 'coc-xml',
"  \ 'coc-yaml',
"  \ 'coc-translator']
" 
" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" 
" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" 
" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" 
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction
" 
" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" 
" " Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)
" 
" " Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
" 
" " coc-translator
" " NOTE: do NOT use `nore` mappings
" " popup
" nmap <Leader>t <Plug>(coc-translator-p)
" vmap <Leader>t <Plug>(coc-translator-pv)
" " echo
" nmap <Leader>e <Plug>(coc-translator-e)
" vmap <Leader>e <Plug>(coc-translator-ev)
" " replace
" nmap <Leader>r <Plug>(coc-translator-r)
" vmap <Leader>r <Plug>(coc-translator-rv)

" ruby provider
" let g:ruby_host_prog = '/home/fengwk/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'

" 打开代码高亮
syntax on
" 设置配色方案
" color snazzy
color deus
" 使配色能更加兼容终端
let &t_ut=''
" 透明背景
" hi Normal ctermfg=252 ctermbg=none

" 设置编码
set encoding=utf-8

" 开启行号显示
set number

" 设置超出长度显示换行
set wrap

" 滚动时保持上下边距
" set scrolloff=5

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

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
nmap <silent> <C-l> :noh<CR>

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
nnoremap <C-s>h :set nosplitright<CR>:vs<CR>
nnoremap <C-s>l :set splitright<CR>:vs<CR>
nnoremap <C-s>k :set nosplitbelow<CR>:sp<CR>
nnoremap <C-s>j :set splitbelow<CR>:sp<CR>
nnoremap <C-w>= :res +5<CR>
nnoremap <C-w>- :res -5<CR>
nnoremap <C-w>== :vertical res +5<CR>
nnoremap <C-w>-- :vertical res -5<CR>
" nnoremap <left> :vertical resize-5<CR>
" nnoremap <right> :vertical resize+5<CR>

" 使用Ctrl+s保存缓冲区
" inoremap <C-s> <Esc>:w<CR>gi
" nnoremap <C-s> :w<CR>
" 使用Ctrl+q退出
" nnoremap <C-q> :q<CR>

" quick down
nnoremap <C-j> 5j
vnoremap <C-j> 5j
" quick up
nnoremap <C-k> 5k
vnoremap <C-k> 5k

" fzf.vim
" Ctrl+p 查看文件列表
" Ctrl+e 查看当前Buffer，两次Ctrl+e快速切换上次打开的Buffer
nnoremap <C-p> :Files<CR>
nnoremap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

" markdown-preview
nnoremap mm :MarkdownPreviewToggle<CR>

" nerdtree
nnoremap tt :NERDTreeToggle<CR>

" 重新打开时光标定位到退出时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
