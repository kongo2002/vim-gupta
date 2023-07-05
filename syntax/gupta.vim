" Vim syntax file
" Language:     Gupta (SAL)
" Maintainer:   Gregor Uhlenheuer

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" synchronization settings
syn sync fromstart

" case sensitive matching
syn case match

" standard control statements
syn keyword gStatement Set Call
syn keyword gControl Break Return If Else While Select Case When Default

syn keyword gSystem Function Description Returns Parameters Static Local
syn keyword gSystem Actions Derived Class Instance Constructor Destructor
syn keyword gSystem Functions FunctionalVar Functional

" types
syn keyword gType Sql String Number Boolean Date Time Handle File Window

" todo statements
syn keyword gTodo TODO FIXME XXX

" constants
syn keyword gBool TRUE FALSE

syn keyword gConstant STRING_Null NUMBER_Null DATETIME_Null BINARY_Null
syn keyword gConstant OBJ_Null

" conditionals
syn keyword gConditional AND OR NOT

" comments
syn match gComment /![^=]*$/ contains=gTodo

" parantheses
syn match gParenError display /)/
syn region gParenInner  matchgroup=gParen start=/(/ end=/)/ contains=ALLBUT,gTodo,gParen

" operators
syn match gOperator display /!=/
syn match gOperator display /[-+*/%=<>|&]\+/

" numbers
syn match gNumber display /\<\d*\.\?\d\+"\?\>/

" SQL
syn match gSql display /\<SQL_[A-Z][a-zA-Z]\+\>/

" strings
syn region gDoubleString start=+[^0-9]"+lc=1 skip=+\\\\\|\\"+ end=+"+
syn region gSingleString start=+[^0-9]'+lc=1 skip=+\\\\\|\\'+ end=+'+

" description
syn region gDescription matchgroup=gDescriptionBound start=/^\s\+Description:/ end=/^\s\+\(Returns\|Derived\|Tool\|Ribbon\)\>/

" default highlighting
if version >= 508 || !exists("did_gupta_syn_inits")
    if version <= 508
        let did_gupta_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink gControl Function
    HiLink gStatement Statement
    HiLink gConditional Conditional
    HiLink gSystem Label
    HiLink gType Type
    HiLink gBool Boolean
    HiLink gCharacter Character
    HiLink gDoubleString String
    HiLink gSingleString String
    HiLink gTodo Todo
    HiLink gComment Comment
    HiLink gDescription Comment
    HiLink gDescriptionBound Label
    HiLink gParen Function
    HiLink gNumber Number
    HiLink gOperator Operator
    HiLink gConstant Constant
    HiLink gSql Constant
    HiLink gParenError Error

    delcommand HiLink

endif

let b:current_syntax = "gupta"
