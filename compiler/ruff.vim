" Vim compiler file
" Compiler:	ruff
" Maintainer:	Artem Vozhdayenko <a.vozhdaenko@gmail.com>

if exists("current_compiler")
  finish
endif
let current_compiler = "ruff"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=ruff\ check\ --stdin-filename\ %\ -

CompilerSet errorformat=
	\%E%f:%l:%c:\ %m,
	\%C%.%#,
	\%-G%.%#,


let &cpo = s:cpo_save
unlet s:cpo_save
