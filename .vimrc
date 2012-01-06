syntax on
colorscheme desert256
set cursorline                                                          
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

nnoremap <F2> :set number! invpaste paste?<CR>a
"set pastetoggle=<F2>
map! <F2> <ESC>:set nonumber invpaste paste?<CR>a
"imap <F2> :set number
"set pastetoggle=<F2>


set showmode
nnoremap <F3> :ConqueTermTab bash <CR>
"nnoremap <F5> :b#<C
"map! <F5> <ESC>:b#<CR>
map! <F3> <ESC> :ConqueTermTab bash <CR>
"map! <F4> <ESC> :buffer <C-Z>


"map! <C-F4> <ESC> :ConqueTermVSplit bash <CR>
"nnoremap <S-F3> :ConqueTermVSplit bash <CR>

map! <F4> <ESC>:tabp<CR>a
map! <F5> <ESC>:tabn<CR>a
map! <F6> <ESC>:tabclose<CR>
nnoremap <F4> :tabp<CR>a
nnoremap <F5> :tabn<CR>a
nnoremap <F6> :tabclose<CR>
map! <F7> <ESC>:set spell!<CR>a
nnoremap <F7> :set spell!<CR>

set laststatus=2
"set statusline=%{GitBranch()}
"set statusline=%<%f\ %m%r%=%-9.(%y%)\ %10.10(#c%b#0x%B%)#\ %-12.(%l,%c%V%)\ %P
set statusline=%<%f\ %m%r%=%-9.(%y%)\ %10.10(#c%b#0x%B%)#\ %-12.(%l,%c%V%)\ %P


set mouse=a
"set ttytype=xterm

nnoremap <ESC><ESC> :q<CR>


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





" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

set nocp
filetype plugin on



function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

