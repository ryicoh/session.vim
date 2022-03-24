# session.vim

Save or restore a session for Vim.

## Installation

For [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug "ryicoh/session.vim"
```

For [dein.vim](https://github.com/Shougo/dein.vim)

```vim
call dein#add("ryicoh/session.vim")
```

## Configuration

```vim
augroup session
	au!
	au VimEnter * call session#restore()
	au VimLeave * call session#save()
augroup end
```
