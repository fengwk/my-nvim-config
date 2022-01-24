" nnoremap <silent> <leader>p :MinimapToggle<cr>
let g:minimap_width = 10
let g:minimap_highlight_range = 1
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 0
" let g:minimap_block_filetypes = [
"     \ 'fugitive', 
"     \ 'nerdtree', 
"     \ 'tagbar', 
"     \ 'fzf',
"     \ 'coc-explorer']

let g:isOpenMinimap = g:minimap_auto_start

function MyFuncMinimapToggle()
    exec ':MinimapToggle'
    if g:isOpenMinimap == 1
        let g:isOpenMinimap = 0
    else
        exec ':MinimapRefresh'
        " exec ':MinimapUpdateHighlight'
        let g:isOpenMinimap = 1
    endif
endfunction
nnoremap <silent> <leader>p :call MyFuncMinimapToggle()<cr>

function MyFuncMinimapRefresh()
    if g:isOpenMinimap == 1
       exec ':MinimapToggle'
       exec ':MinimapToggle'
       " exec ':MinimapRefresh'
       " exec ':MinimapUpdateHighlight'
    endif
endfunction
" http://yyq123.github.io/learn-vim/learn-vi-49-01-autocmd.html
autocmd InsertLeave,WinEnter,BufEnter * :call MyFuncMinimapRefresh()
" autocmd InsertLeave,WinEnter,WinLeave,BufEnter,BufLeave * :call MyFuncMinimapRefresh()

