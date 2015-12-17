" Vim syntax file
" Language: GSS input cards

if exists("b:current_syntax")
    finish
endif

" Comment
syn match gssComment "\v#.*$"

" Operators
syn match gssOperators "\v\+"
syn match gssOperators "\v-"
syn match gssOperators "\v\*"
syn match gssOperators "\v/"
syn match gssOperators "\v\?"
syn match gssOperators "\v\*\="
syn match gssOperators "\v/\="
syn match gssOperators "\v\+\="
syn match gssOperators "\v-\="
syn match gssOperators "\v\=\="

" Treat '=' special
syn match gssConstants "[+-]\?[a-zA-Z0-9\."]\+" contained
syn match gssOperators "\v\=" nextgroup=gssConstants skipwhite

" Stuff members of other stuff, e.g. foo.bar
syn match gssMembers /\.\w\+/ms=s+1
syn match gssClass /\w\+\./me=e-1

" Keywords
syn keyword gssGeoKeywords MESH XMESH YMESH REGION SEGMENT PROFILE
syn keyword gssActKeywords PLOT REFINE METHOD SOLVE PROBE EXPORT END

" Settable variables for gemoetries and procedures
syn keyword gssVarKeywords Type ModelFile Triangle Label Material 
syn keyword gssVarKeywords Location Direction Ion Carrier LatticeTemp
syn keyword gssVarKeywords DopingScale Variable Measure Dispersion
syn keyword gssVarKeywords Scheme Resolution AzAngle ElAngle Style
syn keyword gssVarKeywords CoreFile AscFile VTKFile Region Segment
syn keyword gssVarKeywords ProbeFile Res Cap Ind

" special stuff
syn keyword gssSpeKeywords set boundary 

let b:current_syntax = "gss"

hi def link gssComment          Comment
hi def link gssGeoKeywords      Type
hi def link gssActKeywords      Type
hi def link gssOperators        Statement
hi def link gssVarKeywords      Identifier
hi def link gssSpeKeywords      Special
hi def link gssConstants        Constant
hi def link gssMembers          Identifier
hi def link gssClass            Special
