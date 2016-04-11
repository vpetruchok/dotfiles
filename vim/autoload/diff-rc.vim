set diffopt=filler,iwhite 

" From http://briancarper.net/vim/vimrc

function! IsDiff(col)
    let hlID = diff_hlID(".", a:col)
    return hlID == 24
endfunction

" Jump to the position in a diff line where the difference starts
function! FindDiffOnLine()
    let c = 1
    while c < col("$")
        if IsDiff(c)
            call cursor(".", c)
            return
        endif
        let c += 1
    endwhile
endfunction

nnoremap <silent> ]c ]c:call FindDiffOnLine()<CR>
nnoremap <silent> [c [c:call FindDiffOnLine()<CR>
