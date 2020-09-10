"
" CONSIDERACIÓNS PARA FICHEIROS
"

" notas de calcurse lidas en markdown por defecto
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

" autorestart
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
