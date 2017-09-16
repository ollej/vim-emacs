# vim.emacs

**vim.emacs** is a vim plugin to evaluate elisp expressions in Emacs with a
server running.

May be useful if you edit your .emacs file with vim.

Isn't it awesome?!

 [1]: https://github.com/ollej/vim.emacs

# Installation

Use [Vim 8][2], [pathogen][3] or [vundle][4] to install vim.emacs.

  [2]: https://github.com/vim/vim
  [3]: https://github.com/tpope/vim-pathogen
  [4]: https://github.com/gmarik/vundle

# Setup

Open Emacs and run the following command to start the server.

```
M-x server-start
```

# Usage

Select a range of lines with Elisp expressions and run the command `:Emacs`

Each line will be executed in Emacs and any output will be displayed in Vim.

# Elisp

A couple of emacs lisp lines to try out.

```elisp
(message "Hello, world!")
(info "Elisp")
```

