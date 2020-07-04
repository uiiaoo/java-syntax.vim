" Vim syntax file
" Language      :   Java
" Maintainer    :   Yuki MIYAMOTO <k15121kk[at]maslab.aitech.ac.jp>

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax='java'
endif

runtime! syntax_body/java/syntax/*.vim
runtime! syntax_body/java/hilink/*.vim

sy sync minlines=200
sy sync maxlines=500

let b:current_syntax = "java-syntax.vim"
