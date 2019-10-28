" Setup commands for Vundle (https://vimawesome.com/plugin/vim-autoformat)
" run :PluginInstall to install Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'   " Required by Vundle
Plugin 'chiel92/vim-autoformat' " https://vimawesome.com/plugin/vim-autoformat

call vundle#end()
filetype plugin indent on
" End of Vundle setup

" let g:autoformat_verbosemode=1 " useful for debugging autoformat

" Encoding
set encoding=utf-8

" All tabs as three spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Set the maximum allowed width of a line
set tw=100

" Wrap long lines, break at complete words
set wrap linebreak nolist

" Newline will copy the current indent
set autoindent

" Ctrl-s saves the file
" Ctrl-q saves and exits
noremap  <C-s> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>
noremap  <C-q> :wq<CR>
vnoremap <C-q> <C-C>:wq<CR>
inoremap <C-q> <C-O>:wq<CR>
" Note the following line must be added to .bashrc for the bindings to work
"     stty -ixon

" Auto closing brackets
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Prevent duplicate closing quotes and brackets
function! IsCharacter(...)
    let l:char = getline('.')[col('.') - 1]
    return l:char == a:1 
endfunction

inoremap <expr> ) IsCharacter(")") ? "<right>" : ")"
inoremap <expr> ] IsCharacter("]") ? "<right>" : "]"
inoremap <expr> } IsCharacter("}") ? "<right>" : "}"
inoremap <expr> " IsCharacter("\"") ? "<right>" : "\"\"<left>"
inoremap <expr> ' IsCharacter("'") ? "<right>" : "''<left>"

" Curly bracket return creates body
inoremap {<CR> {<CR>}<Esc>ko<tab>

" Turn on syntax highlighting
syntax on

" To perform a color test, run the following command:
"   $ :runtime syntax/colortest.vim

" Show line numbers and set color
set number
highlight LineNr ctermfg=238

" Shade the region beyond column 100
" let &colorcolumn=join(range(101,999),",")
" highlight ColorColumn ctermbg=238

" Set color column
highlight ColorColumn ctermbg=238
set colorcolumn=101
