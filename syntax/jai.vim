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

syntax keyword jaiIt it

syntax match jaiQuestionMark "?"

syntax region jaiString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match jaiAutoCast "xx"

syntax match jaiInteger "\<\d\+\>"
syntax match jaiFloat "\<\d\+\.\d*\>"
syntax match jaiHex "\<0x[0-9A-Fa-f]\+\>"

syntax match jaiFunction "\v<\w*>(\s*::\s*)@="
syntax match jaiDynamicFunction "\v<\w*(\s*:\=\s*\(.*\))@="

syntax match jaiTagNote "@\<\w\+\>"

syntax match jaiClass "\v<[A-Z]\w+>"
syntax match jaiConstant "\v<[A-Z0-9,_]+>"

syntax match jaiMacro "#\<\w\+\>"

syntax match jaiTemplate "$\<\w\+\>"

syntax match jaiCommentNote  "\s@\<\w\+\>"
syntax match jaiLineComment "//.*" contains=jaiCommentNote
syntax region jaiBlockComment start=/\v\/\*/ end=/\v\*\// contains=jaiBlockComment, jaiCommentNote

highlight link jaiIt Keyword
highlight link jaiUsing Keyword
highlight link jaiNew Keyword
highlight link jaiCast Keyword
highlight link jaiAutoCast Keyword
highlight link jaiDelete Keyword
highlight link jaiReturn Keyword
highlight link jaiDefer Operator

highlight link jaiQuestionMark Operator

highlight link jaiString String

highlight link jaiStruct Structure
highlight link jaiEnum Structure

highlight link jaiFunction Function
highlight link jaiDynamicFunction Function

highlight link jaiMacro Macro
highlight link jaiIf Conditional
highlight link jaiThen Conditional
highlight link jaiElse Conditional
highlight link jaiFor Repeat
highlight link jaiWhile Repeat

highlight link jaiLineComment Comment
highlight link jaiBlockComment Comment
highlight link jaiCommentNote Todo

highlight link jaiClass Type

highlight link jaiTemplate Constant

highlight link jaiTagNote Identifier
highlight link jaiInteger Number
highlight link jaiFloat Number
highlight link jaiHex Number
highlight link jaiDataType Type
highlight link jaiBool Boolean
highlight link jaiConstant Constant
highlight link jaiNull Type

let b:current_syntax = "jai"
