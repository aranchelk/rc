filetype on
syntax on

"nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

map Q :q!<CR>

set noautochdir
set pastetoggle=<F2>
set nu
set ruler

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType ruby set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType ruby set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab| set autoindent

autocmd FileType make set tabstop=4

autocmd BufNewFile,BufRead *.cabal set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd BufNewFile,BufRead *.hs set tabstop=4|set shiftwidth=4|set expandtab|set autoindent

autocmd BufNewFile,BufRead *.elm set tabstop=4|set shiftwidth=4|set expandtab|set autoindent

set mouse=a
set clipboard=unnamed

set cursorline
set cursorcolumn
hi CursorColumn ctermbg=4 ctermfg=none "8 = dark gray, 15 = white
hi CursorLine ctermbg=none ctermfg=none "8 = dark gray, 15 = white

function! RepeatChar(char, count)
  return repeat(a:char, a:count)
endfunction
nnoremap s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
nnoremap S :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>
