" Vim syntax file
" Language: ThingML
" Maintainer: Alexandre Rio <contact@alexrio.fr>
" Latest Revision:

if exists("b:current_syntax")
  finish
endif

syn match thingName '\w\+'
syn match annotation "@\w\+"
syn match msgName "\w+"
syn match number "\<\d\+\>"

syn keyword thingMLkeywords         thing skipwhite
syn keyword thingMLkeywords         datatype thing property import set
syn keyword thingBlockCommand       action do end on exit end
syn keyword stateConst              entry exit readonly
syn keyword modifier                fragment includes select during buffer by
syn keyword functionCommand         function do while return
syn keyword portBlock               required provided
syn keyword portBlock               port nextgroup=thingName
syn keyword portBlock               receives nextgroup=thingName
syn keyword portBlock               sends nextgroup=thingName
syn keyword messageBlock            message nextgroup=msgName
syn keyword cepCommand              stream from produce var
syn keyword conditionalCommand      keep if else
syn keyword boolean                 true false
syn keyword stateChartCommand       statechart omposite region
syn keyword stateChartCommand       state init internal event guard transition
syn keyword stateChartCommand       send print
syn keyword configBlockCommand      group instance connector protocol over
syn keyword configBlockCommand      configuration nextgroup=thingName

"syn region thingBlock start="{" end="}" fold transparent contains=ALLBUT,configBlock
"syn region portBlock start="{" end="}" fold transparent contains=portBlockCommand
"syn region stateChartBlock start="{" end="}" fold transparent contains=stateBlock
"syn region stateBlock start="{" end="}" fold transparent contains=actionBlock
"syn region actionBlock start="do" end="end" fold transparent
"syn region cepBlock start="stream" end="produce" fold transparent contains=cepCommand
"syn region configBlock start="{" end="}" fold contains=configBlockCommand
syn region paren start="(" end=")" transparent
syn region slComment start="//" end="$"
syn region mlComment start="/\*" end="\*/"

let b:current_syntax = "thingml"

hi def link slComment              Comment
hi def link mlComment              Comment
hi def link thingName              String
hi def link thingBlockCommand      Statement
hi def link thingMLkeywords        Statement
hi def link cepCommand             Statement
hi def link messageBlock           Statement
hi def link functionCommand        Statement
hi def link stateChartCommand      Statement
hi def link modifier               Identifier
hi def link portBlock              Keyword
hi def link portBlockCommand       Keyword
hi def link configBlockCommand     Keyword
hi def link annotation             Directory
hi def link conditionalCommand     Conditional
hi def link stateConst             Constant
hi def link number                 Error
hi def link boolean                Boolean
