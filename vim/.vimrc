" Plugin handler
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" set colorscheme
colorscheme PaperColor
set background=light

" set hybrid line numbers
set number relativenumber

" splitting on a more natural side
set splitbelow
set splitright

" Disable autocommenting new lines
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
