set nocompatible
filetype plugin indent on
syntax on

function! LoadVimScripts(dir) 
   for f in split(globpath(a:dir, "**/*.vim"), "\n")
      exec "source " . f 
   endfor 
endfunction

call LoadVimScripts("~/etc/vim/autoload")
