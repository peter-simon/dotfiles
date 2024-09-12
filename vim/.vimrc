" Plugin handler
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
" fzf native plugin
Plug 'junegunn/fzf'
" fzf.vim
Plug 'junegunn/fzf.vim'
call plug#end()

" set colorscheme
colorscheme PaperColor
set background=dark

" set hybrid line numbers
set number relativenumber

" splitting on a more natural side
set splitbelow
set splitright

" Disable autocommenting new lines
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
