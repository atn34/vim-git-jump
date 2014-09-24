if exists('g:loaded_git_jump') || &compatible
  finish
else
  let g:loaded_git_jump = 1
endif

command -nargs=* GJumpDiff cexpr system("git jump diff " . <args>)
command -nargs=* GJumpMerge cexpr system("git jump merge " . <args>)
command -nargs=* GJumpGrep cexpr system("git jump grep " . <args>)
