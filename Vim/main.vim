" Vim syntax file
" Language: Vermilion
" File name: vml.vim

if exists("b:current_syntax")
finish
endif

" Comments
syntax region vmlComment start='#' end='$' keepend
highlight link vmlComment Comment

" Keywords
syntax keyword vmlKeyword require class fun end
highlight link vmlKeyword Keyword

" Constants
syntax keyword vmlConstant true false null
highlight link vmlConstant Constant

" Variables
syntax match vmlVariable /\v\b([a-zA-Z_][a-zA-Z0-9_]|@[a-zA-Z_][a-zA-Z0-9_])\b/
highlight link vmlVariable Identifier

" Strings
syntax region vmlString start=+"+ end=+"+ keepend contains=vmlEscape
syntax match vmlEscape /\./ contained
highlight link vmlString String
highlight link vmlEscape SpecialChar

" Whitespace
syntax match vmlWhitespace /[^\S\n]+/
highlight link vmlWhitespace Whitespace

" Invalid newline
syntax match vmlInvalidNewline /\n+/
highlight link vmlInvalidNewline Error

" Set the default highlighting
let b:current_syntax = "vml"
highlight default link vmlComment Comment




