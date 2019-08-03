# vimrc
Simple vimrc file designed to my liking

## Settings include
- UTF-8 encoding
- All tabs as spaces and set to four
- Autoindentation
- Ctrl-S saves the file (.bashrc must be configured)
- Auto closing of quotes and brackets
- Line numbers and textcolumn set at 80

## cheat sheet

### commands
`<Esc>` normal  
`i` insert  
`R` replace  
`v` visual  
`.` repeat last command  
`O` open above  
`o` open below  
`A` append  
`u` undo  
`<C-r>` redo  

### operators
`d` delete  
`c` change  
`p` put  
`r` replace one char  
`y` yank  
`<` outdent  
`>` indent  

### motions
`h` left  
`j` down  
`k` up  
`l` right  
`w` start of next word  
`e` end of next word  
`b` start of last word  
`0` start of line  
`$` end of line  
`gg` start of file  
`G` end of file  

### search & replace
`f{char}` find char in line  
`;` repeat last f{char} motion  
`*` search for word nearest cursor  
`n` find next occurrence   
`:/foo` search file for 'foo'  
`:%s/old/new` change every occurrence of 'old' to 'new'  

### file management
`:q!` quit without saving  
`:wq` save and quit  
`:w` save  
`:w ~/foo/bar` save file as ~/foo/bar  

