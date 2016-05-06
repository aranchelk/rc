filetype on
syntax on

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set autochdir
set pastetoggle=<F2>

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType make set tabstop=4 
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab| set autoindent  

autocmd BufNewFile,BufRead *.cabal set tabstop=4|set shiftwidth=4|set expandtab|set autoindent

set cursorline
set cursorcolumn
hi CursorLine ctermbg=8 ctermfg=15 "8 = dark gray, 15 = white
hi CursorColumn ctermbg=8 ctermfg=15 "8 = dark gray, 15 = white
