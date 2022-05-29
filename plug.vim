" 安装插件
" https://github.com/junegunn/vim-plug
" 保存重新进入执行安装命令 PlugInstall
call plug#begin('~/.config/nvim/plugged')

" airline 状态栏
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" snazzy 配色
Plug 'connorholyday/vim-snazzy'

" deus 配色
Plug 'theniceboy/nvim-deus'

" gruvbox 配色
Plug 'morhetz/gruvbox'

" dracula 配色
Plug 'dracula/vim'

" indentline 缩进线
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

" nerdtree 文件树
" https://github.com/preservim/nerdtree
" 快捷键 https://www.cnblogs.com/qiumingcheng/p/6275510.html
" Plug 'preservim/nerdtree'

" fzf.vim
" https://github.com/junegunn/fzf.vim
" 使用技巧 https://zhuanlan.zhihu.com/p/41859976
Plug 'junegunn/fzf.vim'

" vim-go
" https://github.com/fatih/vim-go
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" coc.nvim
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" fcitx.vim
" https://github.com/lilydjwg/fcitx.vim
Plug 'lilydjwg/fcitx.vim'

" markdown-preview.nvim
" https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" tabular
" https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

" vim-eclim
" Plug 'dansomething/vim-eclim'

" nerdcommenter
Plug 'preservim/nerdcommenter'

" vim-translator
Plug 'voldikss/vim-translator'

" vim-editorconfig
" https://github.com/sgur/vim-editorconfig
Plug 'sgur/vim-editorconfig'

" minimap.vim
" https://github.com/wfxr/minimap.vim
" yay -S code-minimap
" https://github.com/wfxr/code-minimap
" Plug 'wfxr/minimap.vim'

" md-img-paste.vim
" https://github.com/ferrine/md-img-paste.vim
Plug 'ferrine/md-img-paste.vim'

" honza/vim-snippets
" https://github.com/honza/vim-snippets
" snippets模板，配合coc-snippets使用
" https://zhuanlan.zhihu.com/p/107277463
Plug 'honza/vim-snippets'

call plug#end()

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/markdown-preview.vim
source $HOME/.config/nvim/nerdcommenter.vim
" source $HOME/.config/nvim/minimap.vim
source $HOME/.config/nvim/md-img-paste.vim

" 打开真彩色支持
set termguicolors
" 使配色能更加兼容终端
let &t_ut=''
" 配色方案
" color snazzy
" color deus
" color gruvbox
color dracula
" 背景透明
highlight Normal guibg=NONE ctermbg=None

" fzf.vim
" Ctrl+p 查看文件列表
" Ctrl+e 查看当前Buffer，两次Ctrl+e快速切换上次打开的Buffer
nnoremap <silent><C-p> :Files<CR>
nnoremap <silent><C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

" vim translator
nmap <silent> <leader>t :Translate --engines=haici<cr>
vmap <silent> <leader>t :Translate --engines=google<cr>

" vim-editorconfig
let g:editorconfig_verbose = 1
