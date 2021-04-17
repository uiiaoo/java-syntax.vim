"---------------------------------------------------------------------------------------------------
sy match  javaOperator      '[+\-\~!\*/%<>=&\^|?:]'
sy match  javaDelimiter     '[()\.\[\],;{}]'
sy match  javaIdentifier    '\v<%(\h|\$)%(\w|\$)*>'
sy match  javaFunction      '\v<%(\h|\$)%(\w|\$)*>\ze\_s*\(\_.{-}\)'
sy match  javaType          '\v<\$*\u%(\w|\$)*>'
sy match  javaConstant      '\v<%(\u|[_\$])%(\u|\d|[_\$])*>'
"---------------------------------------------------------------------------------------------------
sy match  javaComment       '//.*'                  contains=@javaTodos
sy region javaComment       start='/\*' end='\*/'   contains=@javaTodos
"---------------------------------------------------------------------------------------------------
sy match  javaString        '\v"%([^\\"]|\\.)*"'
sy region javaString        start='"""\s*$' end='"""'
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
\   contained contains=javaIdentifier,javaDelimiter
"---------------------------------------------------------------------------------------------------
