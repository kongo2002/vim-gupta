if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

setl ts=2
setl sw=2
setl noet

let &cpo = s:cpo_save
unlet s:cpo_save
