if exists('g:loaded_git_jump') || &compatible
  finish
else
  let g:loaded_git_jump = 1
endif

command -complete=customlist,ListGitJumpModes -nargs=* GJump cexpr system('git jump diff master')

fun ListGitJumpModes(A,L,P)
  return ["diff", "merge", "grep"]
endfun
