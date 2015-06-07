set backspace=2
set nocp ts=4 sw=4 noet ai cin bs=2 cb=unnamed
set number ruler wrap autoread showcmd showmode fdm=marker nobackup
syntax on
filetype on

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set makeprg=g++\ -o\ \"%:p:r\"\ \"%:p\"
map <F9> :w<CR>:!clear<CR>:make<CR>
imap <F9> <ESC>:w<CR>:!clear<CR>:make<CR>
map <F5> :!clear<CR>:!%:p:r<CR>
map <C-v> "+p
imap <C-v> <esc><C-v>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set hlsearch

autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* loadview

"autocmd FileType cpp set omnifunc=ccomplete#CompleteCpp
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

