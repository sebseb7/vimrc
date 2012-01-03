syntax on
colorscheme desert256
set scrolloff=5
set tabstop=4 shiftwidth=4
set incsearch hlsearch
set autoindent
set number
set wildmenu
                                                                                       
"let g:loaded_matchparen=1 "disable highlighting matching brackets                      
                                                                                       
"easy buffer access                                                                    
"set wildcharm=<C-Z>                                                                    
"nnoremap <F4> :buffer <C-Z>

nnoremap <F2> :set number! invpaste paste?<CR>i
"set pastetoggle=<F2>
map! <F2> <ESC>: set nonumber invpaste paste?<CR>i


set showmode

nnoremap <F3> :ConqueTermTab bash <CR>
"nnoremap <F5> :b#<CR>
"map! <F5> <ESC>:b#<CR>
map! <F3> <ESC> :ConqueTermTab bash <CR>
"map! <F4> <ESC> :buffer <C-Z>


"map! <C-F4> <ESC> :ConqueTermVSplit bash <CR>
"nnoremap <S-F3> :ConqueTermVSplit bash <CR>

map! <F4> <ESC>:tabp<CR>i
map! <F5> <ESC>:tabn<CR>i
map! <F6> <ESC>:tabclose<CR>
nnoremap <F4> :tabp<CR>
nnoremap <F5> :tabn<CR>
nnoremap <F6> :tabclose<CR>


set laststatus=2
set statusline=%{GitBranch()}

