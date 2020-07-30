" Vim syntax file
" Language      :   Java
" Maintainer    :   Yuki MIYAMOTO <k15121kk[at]maslab.aitech.ac.jp>

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

runtime! syntax_body/java/syntax/*.vim
runtime! syntax_body/java/hilink/*.vim

sy sync minlines=200
sy sync maxlines=500

let b:current_syntax = "java-syntax.vim"
