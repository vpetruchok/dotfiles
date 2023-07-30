set shortmess=I  "disable Vim welcome screen
"set vb t_vb=    "do not beep when error

" Treat dash as part of a word
set iskeyword+=-

set backspace=indent,eol,start

set wildmenu
set wildmode=list:longest,full
set wildignore=*.class,*.pyc

" Popup menu
set completeopt=menu,preview

"set expandtab
set shiftwidth=2
set tabstop=2
set splitright

set autoindent
set modeline

" Mouse
set mouse=a      " mouse support in all modes
set mousehide    " hide the mouse when typing text

set number
"set relativenumber
set ruler
set showcmd

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" from: http://vim.wikia.com/wiki/Example_vimrc
" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


set clipboard=unnamed

if has('unnamedplus')
  set clipboard=unnamedplus
endif


" Showing trailing whitespaces

set listchars=trail:·,tab:>→,nbsp:% ",eol:¶
set list
highlight ExtraWhitespace ctermbg=green ctermfg=blue guibg=green guifg=blue
match ExtraWhitespace /\s\+$/

fun! TrimRight()
  %s/\v\S\zs\s+$//
endfunction

com! TrimRight :call TrimRight()


if !exists("*SoVimrc")

  function! SoVimrc()
    :so $MYVIMRC
  endfunction

  command! -nargs=0 SoVimrc call SoVimrc()
endif
