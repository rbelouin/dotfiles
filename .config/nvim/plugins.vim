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

" Enable vim-auto-save on startup
let g:auto_save = 1
