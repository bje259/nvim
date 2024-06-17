syntax on
set number
set background=dark
colorscheme "avit"

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
set rtp+=~/.fzf
nnoremap <leader>p :Files<CR>
let g:python3_host_prog = '/Users/bradleyeuell/.pyenv/versions/py3nvim/bin/python'
let mapleader = ","
nnoremap <Leader><Leader> :nohlsearch<CR>
" Set default syntax highlighting for temporary command line edits
augroup TempCmdLineEdit
  autocmd!
  autocmd BufNewFile,BufRead /tmp/nvim-cmdline-* set filetype=sh
augroup END
