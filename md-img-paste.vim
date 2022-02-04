autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'

" 在与当前markdown文件同名的img目录下存储图片
" 详见:help functions
" let g:mdip_imgdir_absolute = expand("%:t:r")
" 在与当前markdown文件同名的img目录下存储图片
let g:mdip_imgdir_absolute = expand("%:t:r") . "/img"
