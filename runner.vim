" go
function MyFuncRunner()
    if &filetype == 'go'
        exec ':!go run %'
    elseif &filetype == 'python'
        exec ':!python %'
    elseif &filetype == 'java'
        exec ':!f=% && javac $f && java ${f/.java/}'
    elseif &filetype == 'c'
        exec ':!f=% && gcc -o ${f/.c/.out} $f && "./${f/.c/.out}"'
    endif
endfunction

nnoremap <silent>rr :call MyFuncRunner()<cr>
