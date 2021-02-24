"---------------------------------------------------------------------------------------------------
sy match  javaOperator      '[()\.\[\]+\-\~!\*/%<>=&\^|?:,]'
sy match  javaIdentifier    '\v<%(\h|\$)%(\w|\$)*>'
sy match  javaFunction      '\v<%(\h|\$)%(\w|\$)*>\ze\_s*\(\_.{-}\)'
sy match  javaType          '\v<\$*\u%(\w|\$)*>'
sy match  javaConstant      '\v<%(\u|[_\$])%(\u|\d|[_\$])*>'
"---------------------------------------------------------------------------------------------------
sy match  javaComment       '//.*'                  contains=@javaTodos
sy region javaComment       start='/\*' end='\*/'   contains=@javaTodos
"---------------------------------------------------------------------------------------------------
sy match  javaString        '\v"%([^\\"]|\\.)*"'
sy match  javaCharacter     "'[^\\']'"
sy match  javaCharacter     "'\\[btnfr\"'\\]'"
sy match  javaCharacter     "\v'\\%(\o{1,3}|u\x{4})'"
"---------------------------------------------------------------------------------------------------
sy match  javaDecNumber     '\v\c<\d%(\d|_*\d)*L=>'
sy match  javaOctNumber     '\v\c<0%(\o|_*\o)+L=>'
sy match  javaHexNumber     '\v\c<0X\x%(\x|_*\x)*L=>'
sy match  javaBinNumber     '\v\c<0B[01]%([01]|_*[01])*L=>'
"---------------------------------------------------------------------------------------------------
sy match  javaDecFloat      '\v\c<\d%(\d|_*\d)*%(E[+-]=\d%(\d|_*\d)*[FD]=|[FD])>'
sy match  javaDecFloat      '\v\c<\d%(\d|_*\d)*\.%(\d%(\d|_*\d)*)=%(E[+-]=\d%(\d|_*\d)*)=[FD]='
sy match  javaDecFloat      '\v\c\.\d%(\d|_*\d)*%(E[+-]=\d%(\d|_*\d)*)=[FD]='
sy match  javaHexFloat      '\v\c<0X\x%(\x|_*\x)*%(P[+-]=\d%(\d|_*\d)*[FD]=|[FD])>'
sy match  javaHexFloat      '\v\c<0X\x%(\x|_*\x)*\.%(\x%(\x|_*\x)*)=%(P[+-]=\d%(\d|_*\d)*)=[FD]='
sy match  javaHexFloat      '\v\c<0X\.\x%(\x|_*\x)*%(P[+-]=\d%(\d|_*\d)*)=[FD]='
"---------------------------------------------------------------------------------------------------
sy match  javaPreProc       '@\h\w*'
sy match  javaInclude       '\v<import%(\_s+static)=>'
\   skipwhite skipempty nextgroup=javaPackagePath
sy match  javaPackagePath   '\v<%(%(\w|\$)+\_s*\.\_s*)*%(\w|\$)+>'
\   contained contains=javaIdentifier,javaOperator
"---------------------------------------------------------------------------------------------------
if !exists("java_ignore_javadoc")
  " syntax coloring for javadoc comments (HTML)
  syntax include @javaHtml syntax/html.vim
  unlet b:current_syntax
  " HTML enables spell checking for all text that is not in a syntax item. This
  " is wrong for Java (all identifiers would be spell-checked), so it's undone
  " here.
  syntax spell default

  sy match  javaCommentStar   contained "^\s*\*[^/]"me=e-1
  sy match  javaCommentStar   contained "^\s*\*$"
  sy region javaDocComment    start="/\*\*"  end="\*/" contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,@Spell,@javaTodos
  sy region javaCommentTitle  contained matchgroup=javaDocComment start="/\*\*"   matchgroup=javaCommentTitle keepend end="\.$" end="\.[ \t\r<&]"me=e-1 end="[^{]@"me=s-2,he=s-1 end="\*/"me=s-1,he=s-1 contains=@javaHtml,javaCommentStar,@Spell,javaDocTags,javaDocSeeTag,@javaTodos
  sy region javaDocTags       contained start="{@\(code\|link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}"
  sy match  javaDocTags       contained "@\(param\|exception\|throws\|since\)\s\+\S\+" contains=javaDocParam
  sy match  javaDocParam      contained "\s\S\+"
  sy match  javaDocTags       contained "@\(version\|author\|return\|deprecated\|serial\|serialField\|serialData\)\>"
  sy region javaDocSeeTag     contained matchgroup=javaDocTags start="@see\s\+" matchgroup=NONE end="\_."re=e-1 contains=javaDocSeeTagParam
  sy match  javaDocSeeTagParam contained @"\_[^"]\+"\|<a\s\+\_.\{-}</a>\|\(\k\|\.\)*\(#\k\+\((\_[^)]\+)\)\=\)\=@ extend
  syntax case match
endif
