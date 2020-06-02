let mapleader = ","

nmap <Leader>b :Buffers<CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>h :History<CR>
nmap <Leader>p :b#<CR>
nmap <Leader>r :Rg<Space>
nmap <Leader>t :GitFiles<CR>
nmap <Leader>c :set cursorcolumn!<CR>
nmap <Leader><Space> :TSType<CR>
nmap <Leader><CR> :TSDefPreview<CR>

nmap <C-l> :set hlsearch!<CR>:set hlsearch?<CR>
imap <C-l> <Esc>:set hlsearch!<CR>a
