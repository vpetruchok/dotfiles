" From http://vim.wikia.com/wiki/VimTip891
:amenu Copy.fname :let @+=expand("%:t")<CR>
:amenu Copy.fpath :let @+=expand("%:p:h")<CR>
:amenu Copy.rname :let @+=expand("%:.")<CR>

com! Fqn let @+=expand("%:p") | echo @+
noremap <M-C-Insert> :Fqn<CR>
inoremap <M-C-Insert> <ESC>:Fqn<CR>a
