if exists('g:loaded_git_jump') || &compatible
  finish
else
  let g:loaded_git_jump = 1
endif

command! -nargs=* Gjump echo <args>
