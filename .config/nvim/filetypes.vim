filetype off
filetype plugin on
autocmd BufNewFile,BufRead *.music set filetype=haskell
autocmd BufNewFile,BufRead *.purs set filetype=haskell
autocmd BufNewFile,BufRead *.tmux.conf set filetype=tmux

autocmd BufNewFile,BufRead * set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.php set tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4
