set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'matchit.zip'
Plugin 'derekwyatt/vim-scala'
Plugin 'gre/play2vim'
Plugin 'evidens/vim-twig'
Plugin 'trevordmiller/nova-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-fugitive'
Plugin '907th/vim-auto-save'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'

call vundle#end()

" vim-auto-save: enable on startup
let g:auto_save = 1

" fzf: customize colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" fzf: jump to the existing window if possible
let g:fzf_buffers_jump = 1
