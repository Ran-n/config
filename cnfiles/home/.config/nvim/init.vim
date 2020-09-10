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

" tódolos plugins usados
source modulos/plugins.vim

" tódolos mapeos
source modulos/mapeos.vim

" relativo a como se ve o editor
source modulos/ui.vim

" para os tabuladores 
    set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
    "autocmd Filetype css setlocal tabstop=4

" para que non saia o ficheiro .netrwhist
    let g:netrw_dirhistmax = 0

" para que cando abras un split vertical se poña á dereita e horizontal abaixo
    set splitbelow
    "set splitbelow splitright 


" consideracións para ficheiros
source modulos/fichs.vim

" folding
"    set foldmethod=indent
"    set foldnestmax=10
"    set nofoldenable
"    set foldlevel=2
"
"syntax enable
"filetype plugin on
"set termguicolors
"hi Normal ctermbg=none
"hi Terminal ctermbg=none
"hi Terminal guibg=none
"hi Normal guibg=none
