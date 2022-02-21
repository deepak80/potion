" When a new file(buffer) with extension .pn is created
" or read/loaded from the system. set the current buffer's filetype
" as 'potion'.
autocmd BufNewFile,BufRead *.pn set filetype=potion
