xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

xnoremap . :norm .<CR>


"from http://vim.wikia.com/wiki/Capture_ex_command_output
"
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction

command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

