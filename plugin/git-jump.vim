if exists('g:loaded_git_jump') || &compatible
  finish
else
  let g:loaded_git_jump = 1
endif

let s:local_path = expand('<sfile>:p:h')

command -nargs=* GJumpDiff call s:gitjump("diff", <f-args>)
command -nargs=* GJumpMerge call s:gitjump("merge", <f-args>)

function! s:gitjump(mode, ...)
  cexpr system(s:local_path . '/../bin/git-jump ' . a:mode . ' ' . join(a:000, ' '))
endfunction
