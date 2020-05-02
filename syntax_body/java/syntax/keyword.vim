"-----------------------------------------------------------------------------------------
sy keyword javaConstant         this super
sy keyword javaConstant         null
sy keyword javaBoolean          true false
"-----------------------------------------------------------------------------------------
sy keyword javaStatement        return
sy keyword javaStatement        break continue
sy keyword javaConditional      if else
sy keyword javaRepeat           for while do
sy keyword javaLabel            case default
sy keyword javaOperatorSystem   new                 skipwhite skipempty nextgroup=javaType
sy keyword javaOperatorSystem   instanceof          skipwhite skipempty nextgroup=javaType
sy keyword javaAccessKeyword    public protected private
sy keyword javaException        throw
sy keyword javaException        try catch finally
"-----------------------------------------------------------------------------------------
sy keyword javaPackage          package
"-----------------------------------------------------------------------------------------
sy keyword javaTypeSystem       void
sy keyword javaTypeSystem       char
sy keyword javaTypeSystem       byte short int long
sy keyword javaTypeSystem       boolean
sy keyword javaTypeSystem       float double
sy keyword javaTypeSystem       var
sy keyword javaStorageClass     static transient final abstract
sy keyword javaStorageClass     volatile strictfp native
sy keyword javaStorageClass     synchronized
sy keyword javaStructure        class interface     skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        enum                skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        extends implements  skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        throws              skipwhite skipempty nextgroup=javaType
"-----------------------------------------------------------------------------------------
sy keyword javaDebug            assert
"-----------------------------------------------------------------------------------------
sy keyword javaError            goto const
"-----------------------------------------------------------------------------------------
sy keyword javaTodoTask         TODO FIXME FIX contained
sy keyword javaTodoNote         NOTE           contained
sy keyword javaTodoWarn         XXX NB         contained
"-----------------------------------------------------------------------------------------
sy keyword javaSpecialTags      Override Deprecated contained containedin=javaPreProc
"-----------------------------------------------------------------------------------------
