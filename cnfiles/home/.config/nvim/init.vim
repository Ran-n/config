"-----------------------------------------"
"----- Configuración NeoVim por Ran# -----"
"-----------------------------------------"
"                       _
" _ __   ___  _____   _(_)_ __ ___
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \
"| | | |  __/ (_) \ V /| | | | | | |
"|_| |_|\___|\___/ \_/ |_|_| |_| |_|
"   
"
"-----------------------------------------"

" tecla maestra para poder facer comandos de vim
    let mapleader =" "

" Plugins
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'junegunn/goyo.vim'
    Plug 'scrooloose/nerdtree'
    call plug#end()
" Fin dos plugins

" Mapeo das letras para comandos de vim
    map <leader>f :Goyo \| set linebreak<CR>
    map <leader>t :NERDTreeToggle<CR>


" UI {{{

" para que aparezan os números á dereita
    set nu
" para que sexan os números relativos
    set relativenumber "set rnu
" para que se mostre a linha do cursor
"    set cursorline

" }}}


" para os tabuladores 
    set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
    "autocmd Filetype css setlocal tabstop=4

" para que non saia o ficheiro .netrwhist
    let g:netrw_dirhistmax = 0

" para que cando abras un split vertical se poña á dereita e horizontal abaixo
    set splitbelow
    "set splitbelow splitright 

" notas de calcurse lidas en markdown por defecto
    autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
    autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

" abrir este ficheiro dende o calquer editor
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" folding
"    set foldmethod=indent
"    set foldnestmax=10
"    set nofoldenable
"    set foldlevel=2
"
"syntax enable
"filetype plugin on
"set termguicolors
"colorscheme mysticaltutor
"hi Normal ctermbg=none
"hi Terminal ctermbg=none
"hi Terminal guibg=none
"hi Normal guibg=none
