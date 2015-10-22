execute pathogen#infect()
syntax on
filetype plugin indent on
set makeprg=g++-5\ -o\ \"%:p:r\"\ \"%:p\"
map <F9> :w<CR>:!clear<CR>:make<CR>
imap <F9> <ESC>:w<CR>:!clear<CR>:make<CR>
map <F5> :!clear<CR>:!%:p:r<CR>
au BufNewFile *.cpp r ~/default.cpp
let g:molokai_original = 0
