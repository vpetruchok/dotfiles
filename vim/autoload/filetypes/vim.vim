autocmd BufNewFile,BufRead .ideavimrc    set ft=vim
autocmd BufNewFile,BufRead .vrapperrc    set ft=vim
autocmd BufNewFile,BufRead .vimperatorrc set ft=vim

autocmd FileType vim call FileType_Vim()

function! FileType_Vim()
  set expandtab
  set shiftwidth=2
  set tabstop=2
  set nocursorline
  map K :exe ":help ".expand("<cword>")<CR>
endfunction
