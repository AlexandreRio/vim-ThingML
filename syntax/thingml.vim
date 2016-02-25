" Vim syntax file
" Language: ThingML
" Maintainer: Alexandre Rio <contact@alexrio.fr>
" Latest Revision:

if exists("b:current_syntax")
  finish
endif

syn match thingName '\w\+'
syn match annotation '@\w\+'

syn keyword thingMLkeywords		thing nextgroup=thingName includes skipwhite
syn keyword thingMLkeywords		datatype datatype thing fragment nextgroup=thingName skipwhite
syn keyword thingBlockCommand		action do end on entry exit end contained
syn keyword portBlock		required port nextgroup=thingName
syn keyword portBlock		provided port nextgroup=thingName
syn keyword portBlockCommand	sends receives nextgroup=thingName contained
syn keyword stateChartBlockCommand	statechart init
syn keyword stateCommand		state nextgroup=thingName
syn keyword configBlockCommand		instance connector contained
syn keyword configBlockCommand		configuration nextgroup=thingName contained

syn region thingBlock start="{" end="}" fold transparent contains=ALLBUT,thingBlock,configBlock
syn region portBlock start="{" end="}" fold transparent contains=portBlockCommand
syn region stateChartBlock start="{" end="}" fold transparent contains=stateBlock
syn region stateBlock start="{" end="}" fold transparent contained contains=actionBlock
syn region actionBlock start="do" end="end" fold transparent contained
syn region configBlock start="{" end="}" fold contains=configBlockCommand

let b:current_syntax = "thingml"

hi def link thingName String
hi def link thingBlockCommand Statement
hi def link thingMLkeywords Statement
hi def link portBlock Keyword
hi def link portBlockCommand Keyword
hi def link configBlockCommand Keyword
hi def link annotation Label
"hi def link
"hi def link
"hi def link
"hi def link
