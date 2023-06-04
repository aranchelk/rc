filetype on
syntax on
"filetype plugin indent on

"nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

map Q :q!<CR>

set noautochdir
set autoindent
set pastetoggle=<F2>
set nu
set ruler
set guitablabel=%M%f

autocmd FileType haskell set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType ruby set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType ruby set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab| set autoindent
autocmd FileType make set tabstop=4

autocmd BufNewFile,BufRead *.cabal set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd BufNewFile,BufRead *.hs set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd BufNewFile,BufRead *.elm set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd BufNewFile,BufRead *.purs set tabstop=4|set shiftwidth=4|set expandtab|set autoindent

" set mouse=v

" My crosshairs
set cursorline
set cursorcolumn
hi CursorColumn ctermbg=4 ctermfg=none "8 = dark gray, 15 = white
hi CursorLine ctermbg=none ctermfg=none "8 = dark gray, 15 = white
