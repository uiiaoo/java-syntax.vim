"-----------------------------------------------------------------------------------------
sy keyword javaConstant         this super
sy keyword javaConstant         null
sy keyword javaBoolean          true false
"-----------------------------------------------------------------------------------------
sy keyword javaStatement        return
sy keyword javaStatement        break continue
sy keyword javaStatement        yield
sy keyword javaConditional      if else switch
sy keyword javaRepeat           for while do
sy keyword javaLabel            case default
sy keyword javaOperator         new                 skipwhite skipempty nextgroup=javaType
sy keyword javaOperator         instanceof          skipwhite skipempty nextgroup=javaType
sy keyword javaAccessKeyword    public protected private
sy keyword javaException        throw
sy keyword javaException        try catch finally
"-----------------------------------------------------------------------------------------
sy keyword javaPreProc          package
"-----------------------------------------------------------------------------------------
sy keyword javaType             void
sy keyword javaType             char
sy keyword javaType             byte short int long
sy keyword javaType             boolean
sy keyword javaType             float double
sy keyword javaType             var
sy keyword javaStorageClass     static transient final abstract
sy keyword javaStorageClass     volatile strictfp native
sy keyword javaStorageClass     synchronized
sy keyword javaStructure        class interface     skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        enum                skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        extends implements  skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        throws              skipwhite skipempty nextgroup=javaType
sy keyword javaStructure        record              skipwhite skipempty nextgroup=javaType
"-----------------------------------------------------------------------------------------
sy keyword javaDebug            assert
"-----------------------------------------------------------------------------------------
sy keyword javaError            goto const
"-----------------------------------------------------------------------------------------
sy keyword javaTodoTask         TODO FIXME  contained
sy keyword javaTodoNote         NOTE        contained
sy keyword javaTodoWarn         XXX NB      contained
"-----------------------------------------------------------------------------------------
