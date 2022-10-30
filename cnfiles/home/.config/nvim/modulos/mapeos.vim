"
" MAPEOS DE TECLAS
"

" tecla maestra para poder facer comandos de vim
let mapleader =" "

" Mapeo das letras para comandos de vim
map <leader>f :Goyo \| set linebreak<CR>
map <leader>t :NERDTreeToggle<CR>

" autocompilar
map <leader>c :w! <bar> !compiler <c-r>%<CR><CR>
map <leader>p :!opout <c-r>%<CR><CR>

" autocommitear en git
map <leader>gc :w! <bar> !gc <c-r>%<CR><CR>

" editar a metadata co meu script
nnoremap <leader>me :w! <bar> !metadata -e <c-r>%<CR> <bar> :mkview <bar> :e <CR>

" copiar e pegar global
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "*P :let @+=@*<CR>

" abrir este ficheiro dende o calquer editor
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :up <bar> :source $MYVIMRC <bar> :doautocmd BufRead<CR>
