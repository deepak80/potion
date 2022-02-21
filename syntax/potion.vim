" finish command -> Stop sourcing a script.  Can only be used in a Vim
" script file.  This is a quick way to skip the rest of
" the file.
" something similar to return control statement on C,C++ and Java

" The lines at the beginning(if block) and end of the file(let
" b:current_syntax) are a convention that prevents it from being loaded if
" syntax highlighting has already been enabled for this buffer.

" If current syntax file has already been loaded(means b:current_syntax
" already created/exists) for this buffer
" stop immediately sourcing the rest of the file.
if exists("b:current_syntax")
	finish
endif

" echom "Our Syntax Highlighting code will go here."
" Open a new Vim instance. Open factorial.pn in that instance, you'll definitely see the
" above message that is the clear indication that our syntax file potion.vim
" is successfully loaded.

" To highlight a piece of syntax
" ------------------------------
" potionKeyword(name of the syntax group) -> holds "chunks of syntax" -> STEP:1 first line defining 'chunk of
" syntax' using 'syntax keyword' or related command.
" Here we're added (to, times) to 'potionKeyword'
" How you define your groups is up to you(prefer grup related items together)
syntax keyword potionKeyword to times loop while
syntax keyword potionKeyword if elseif else
syntax keyword potionKeyword class return
" STEP:2 link 'chunks' to highlighting groups. A highlighting group is
" something you define in a color scheme.
" After these, open your factorial.pn file in a new instance
" you found that 'to' and 'times' are highlighted as keywords in your color
" scheme!.

" Add some more built-in Potion functions to this syntax highlighting file.
" Our syntax group name -> 'potionFunction'
syntax keyword potionFunction print join string

" Keyword,Function etc.-> are some common standard highlighting groups.
" This last line telling Vim that anything in the 'potionKeyword' syntax group
" should be highlighted as a Keyword.
highlight link potionKeyword Keyword
" anything that added to 'potionFunction' syntax group should be highlighted
" as a Function (Takes Function highlighting of current colorshcheme)
" If it seems nothing is change in your factorial.pn file
" change your default colorscheme and reopen it, in a new instance. Boom! :)
highlight link potionFunction Function


let b:current_syntax = "potion"
