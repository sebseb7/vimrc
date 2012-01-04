syntax on
colorscheme desert256
"highlight Pmenu ctermbg=darkred                                         
"highlight Search ctermbg=23                                             
set cursorline                                                          
"hi CursorLine cterm=none
"highlight CursorLine ctermbg=233 cterm=none                             
"highlight LineNr ctermbg=233
"highlight Normal ctermfg=251 ctermbg=16 guifg=#cccccc guibg=#000000
"highlight Normal ctermbg=232
"highlight CursorLine ctermbg=233
set scrolloff=5
set tabstop=4 shiftwidth=4
set incsearch hlsearch
set autoindent
set number
set wildmenu
"set wildmode=longest:full
set ttymouse=xterm2
set mouse=a
"set t_RV=
set wrap!
set hidden                                                              
set ruler                                                               
set showcmd

"let g:loaded_matchparen=1 "disable highlighting matching brackets                      
                                                                                       
"easy buffer access                                                                    
"set wildcharm=<C-Z>                                                                    
"nnoremap <F4> :buffer <C-Z>

nnoremap <F2> :set number! invpaste paste?<CR>i
"set pastetoggle=<F2>
map! <F2> <ESC>: set nonumber invpaste paste?<CR>i


set showmode

nnoremap <F3> :ConqueTermTab bash <CR>
"nnoremap <F5> :b#<C
"map! <F5> <ESC>:b#<CR>
map! <F3> <ESC> :ConqueTermTab bash <CR>
"map! <F4> <ESC> :buffer <C-Z>


"map! <C-F4> <ESC> :ConqueTermVSplit bash <CR>
"nnoremap <S-F3> :ConqueTermVSplit bash <CR>

map! <F4> <ESC>:tabp<CR>i
map! <F5> <ESC>:tabn<CR>i
map! <F6> <ESC>:tabclose<CR>
nnoremap <F4> :tabp<CR>i
nnoremap <F5> :tabn<CR>i
nnoremap <F6> :tabclose<CR>


set laststatus=2
"set statusline=%{GitBranch()}
"set statusline=%<%f\ %m%r%=%-9.(%y%)\ %10.10(#c%b#0x%B%)#\ %-12.(%l,%c%V%)\ %P
set statusline=%<%f\ %m%r%=%-9.(%y%)\ %10.10(#c%b#0x%B%)#\ %-12.(%l,%c%V%)\ %P


set mouse=a
"set ttytype=xterm


":map <M-Esc>[62~ <ScrollWheelUp>
":map! <M-Esc>[62~ <ScrollWheelUp>
":map <M-Esc>[63~ <ScrollWheelDown>
":map! <M-Esc>[63~ <ScrollWheelDown>
":map <M-Esc>[64~ <S-ScrollWheelUp>
":map! <M-Esc>[64~ <S-ScrollWheelUp>
":map <M-Esc>[65~ <S-ScrollWheelDown>
":map! <M-Esc>[65~ <S-ScrollWheelDown>

"open file at last position
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

