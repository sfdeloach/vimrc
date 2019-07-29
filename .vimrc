" Encoding
set encoding=utf-8

" All tabs as four spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Newline will copy the current indent
set autoindent

" Ctrl-s saves (updates) the file
" Note the following lines must be added to .bashrc to turn off
" the existing binding:
"     bind -r '\C-s'
"     stty -ixon
noremap  <C-s> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>

" Auto closing quotes and brackets
inoremap " ""<left>
inoremap ' ''<left>
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

" Curly bracket return creates body
inoremap {<CR> {<CR>}<Esc>ko<tab>

" Turn on syntax highlighting
syntax on

" Show line numbers and set color
set number
highlight LineNr ctermfg=238

" Controls the textcolumn size and visibility
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=238
