" go
function Runner()
    if &filetype == 'go'
        exec ':!go run %'
    elseif &filetype == 'python'
        exec ':!python %'
    elseif &filetype == 'java'
        exec ':!f="A.java" && javac $f && java ${f/.java/}'
    endif
endfunction

nnoremap <silent>rr :call Runner()<cr>
