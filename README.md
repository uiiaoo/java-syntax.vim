# java-syntax.vim
This is a Vim plugin that provides syntax highlighting for Java.
This syntax highlighting is better than the default.

## Installation
### Using dein.vim
```viml
call dein#add('uiiaoo/java-syntax.vim')
```

If you use another plugin manager, follow its way.

**Note**: You can disable highlighting variables if you write the following code on your `.vimrc`.
```viml
highlight link javaIdentifier NONE
```

**Note**: You can also disable highlighting delimiters.
```viml
highlight link javaDelimiter NONE
```
