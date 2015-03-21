filetype on
syntax on

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set autochdir
set pastetoggle=<F2>

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType make set tabstop=4 
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab| set autoindent  
