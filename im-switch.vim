" 为wsl添加的配置，在首次进入vim时默认为english，在离开插入模式时设为英语
" https://www.zhihu.com/question/303850876
autocmd InsertLeave * exec 'silent !~/.config/nvim/im-store.sh'
autocmd InsertEnter * exec 'silent !~/.config/nvim/im-restore.sh'
exec 'silent !im-select.exe 1033'
