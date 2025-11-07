# ruff-vim-compiler

This is a simple implementation of vim compiler for [ruff](https://docs.astral.sh/ruff/linter) linter issues.\
A convenient way to use it is via [vim-dispatch](https://github.com/tpope/vim-dispatch) strategy.

Example of vimrc:
```vim
let g:dispatch_compilers = {
            \ 'ruff': 'ruff',
```
