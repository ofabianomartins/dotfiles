" General
set number     " Show line numbers  
set linebreak  " Break lines at word (requires wrap lines)
set showbreak=+++ " Wrap-broken line prefix
set textwidth=100 " Line wrap (number of cols)
set visualbell " Use visual bell (no beeping)

set hlsearch " Highlight all search results 
set smartcase " Enable smart-case search 
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally 

set autoindent " Auto indenti new lines
set smartindent " Enable smart-indent
set smarttab " Enable smart-tabs
set expandtab " Tab to spaces
set shiftwidth=2 "Number of auto-indent spaces
set softtabstop=2 "Number of spaces per tab

" Advanced 

set ruler "Show row and column ruler information
set autowriteall " Auto-write all file changes
set splitright  " alway split open new on right

set undolevels=100 " Number of undos
set backspace=indent,eol,start

set clipboard=unnamed
set colorcolumn=101

syntax enable 

set background=dark

set nobackup
set noswapfile
set nowritebackup
set mouse=a
 
" Configure netrw

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Shortcuts

map <C-z> u
map <C-t> :tabnew <Enter>
noremap <C-b> :call ToggleNetrw()<CR>
map <C-Tab> gt
map <C-S-Tab> gT

