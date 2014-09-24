if exists('g:loaded_git_jump') || &compatible
  finish
else
  let g:loaded_git_jump = 1
endif

command -nargs=* GJumpDiff call s:gitjump("diff", <f-args>)
command -nargs=* GJumpMerge call s:gitjump("merge", <f-args>)
command -nargs=* GJumpGrep call s:gitjump("grep", <f-args>)

function! s:gitjump(mode, ...)
  cexpr system('git jump ' . a:mode . join(a:000, ' '))
endfunction
