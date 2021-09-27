if exists("b:current_syntax")
  finish
endif

syntax keyword jaiUsing using
syntax keyword jaiNew new
syntax keyword jaiDelete delete
syntax keyword jaiCast cast

syntax keyword jaiStruct struct
syntax keyword jaiEnum enum

syntax keyword jaiIf if
syntax keyword jaiThen then
syntax keyword jaiElse else
syntax keyword jaiFor for
syntax keyword jaiWhile while

syntax keyword jaiDataType void string int float float32 float64 u8 u16 u32 u64 s8 s16 s32 s64 bool
syntax keyword jaiBool true false
syntax keyword jaiNull null

syntax keyword jaiReturn return
syntax keyword jaiDefer defer

syntax keyword jaiInline inline
syntax keyword jaiNoInline no_inline

syntax keyword jaiSOA SOA
syntax keyword jaiAOS AOS

syntax keyword jaiIt it

syntax region jaiString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax keyword jaiAutoCast xx

syntax match jaiFunction "\v<\w*>(\s*::\s*)@="
syntax match jaiDynamicFunction "\v<\w*(\s*:\=\s*\(.*\))@="

syntax match jaiTagNote "@\<\w\+\>" display

syntax match jaiClass "\v<[A-Z]\w+>" display
syntax match jaiConstant "\v<[A-Z0-9,_]+>" display

syntax match jaiInteger "\<\d\+\>" display
syntax match jaiFloat "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syntax match jaiHex "\<0x[0-9A-Fa-f]\+\>" display

syntax match jaiMacro "#\<\w\+\>" display

syntax match jaiTemplate "$\<\w\+\>"

syntax match jaiCommentNote "@\<\w\+\>" contained display
syntax match jaiLineComment "//.*" contains=jaiCommentNote
syntax region jaiBlockComment start=/\v\/\*/ end=/\v\*\// contains=jaiBlockComment, jaiCommentNote

highlight def link jaiIt Keyword
highlight def link jaiUsing Keyword
highlight def link jaiNew Keyword
highlight def link jaiCast Keyword
highlight def link jaiAutoCast Keyword
highlight def link jaiDelete Keyword
highlight def link jaiReturn Keyword
highlight def link jaiDefer Operator

highlight def link jaiInline Keyword
highlight def link jaiNoInline Keyword

highlight def link jaiString String

highlight def link jaiStruct Structure
highlight def link jaiEnum Structure

highlight def link jaiFunction Function
highlight def link jaiDynamicFunction Function

highlight def link jaiMacro Macro
highlight def link jaiIf Conditional
highlight def link jaiThen Conditional
highlight def link jaiElse Conditional
highlight def link jaiFor Repeat
highlight def link jaiWhile Repeat

highlight def link jaiLineComment Comment
highlight def link jaiBlockComment Comment
highlight def link jaiCommentNote Todo

highlight def link jaiClass Type

highlight def link jaiTemplate Constant

highlight def link jaiTagNote Identifier
highlight def link jaiDataType Type
highlight def link jaiBool Boolean
highlight def link jaiConstant Constant
highlight def link jaiNull Type
highlight def link jaiInteger Number
highlight def link jaiFloat Float
highlight def link jaiHex Number

highlight def link jaiSOA Keyword
highlight def link jaiAOS Keyword

let b:current_syntax = "jai"
