#! ALIASES
#+ Autor:	Ran#
#+ Creado:	03/2020
#+ Editado:	29/06/2020 18:47:53

#        ___               _              _ _
#       / / |__   __ _ ___| |__      __ _| (_) __ _ ___  ___  ___
#  /\/|/ /| '_ \ / _` / __| '_ \    / _` | | |/ _` / __|/ _ \/ __|
# |/\// /_| |_) | (_| \__ \ | | |  | (_| | | | (_| \__ \  __/\__ \
#    /_/(_)_.__/ \__,_|___/_| |_|___\__,_|_|_|\__,_|___/\___||___/
#                              |_____|
#

## comandos básicos
alias s='sudo'
alias ls='ls --color=auto'
alias la='ls -a --color=always'
alias ll='ls -l --color=always'
alias lsla='ls -la --color=always'
alias more=less
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

mkcdir () {
    mkdir -p -- "$1" && cd -P -- "$1"
}

sudo() { 
    if alias "$1" &> /dev/null ; then 
        $(type "$1" | sed -E 's/^.*`(.*).$/\1/') "${@:2}"
    else 
        command sudo "$@"
    fi 
}

# útieis propios
alias cpwd='pwd | xargs echo -n | xclip -selection clipboard'
alias rbash='source ~/.bashrc'
alias cantf='ls | wc -l'

### pacman
alias actual='sudo pacman -Syu --noconfirm'
alias limpar='sudo pacman -Rsn $(pacman -Qdtq) --noconfirm'

## comandos programas
### programas externos
alias r='ranger'
alias v='vim -u ~/.config/vim/vimrc'
alias sv='sudo vim'
alias nv='nvim'
alias snv='sudo nvim'
alias xclip='xargs echo -n | xclip -selection clipboard'
alias 7ze='7z e'
alias locate='sudo updatedb; locate'
alias pixt='pixterm -s 2'

alias condad='conda deactivate'
alias condaa='conda activate'

alias rmzip='rm *zip*'
alias rm7z='rm *7z*'

alias nota='calcurse'

### programas e scripts propios
alias md='metadata'
alias mdm='metadata -m'
alias mde='metadata -e'
alias mdc='metadata -c'

alias gfolder='pwd | rev | cut -d/ -f1 | rev | copia'

alias rcc='rconfig copia' # só ten sentido pra min

## cds no sistema
### Carpetas base
alias docs='cd ~/Documentos; ls'
alias des='cd ~/Descargas; ls'
alias mus='cd ~/Música; ls'
alias musa='cd ~/Música/Audio; ls'
alias musv='cd ~/Música/VideoClips; ls'
alias imxs='cd ~/Imaxes; ls'
alias vids='cd ~/Vídeos; ls'
alias sw='cd ~/Programas; ls'

alias scripts='cd ~/Programas/scripts; ls'
alias sc='cd ~/Programas/scripts; ls'
alias congit='cd ~/Programas/config; ls'
alias cnf='cd ~/Programas/config; ls'
alias tutos='cd ~/Programas/tutos; ls'
#alias ledo='cd ~/Programas/ledo; ls'

alias ulb="cd /usr/local/bin; ls"

# Carpetas de Descargas específicas
alias telegram='cd ~/Descargas/Telegram\ Desktop; ls'
alias tele='cd ~/Descargas/Telegram\ Desktop; ls'
alias brave='cd ~/Descargas/Brave; ls'
alias torrente='cd ~/Descargas/Torrente; ls'
alias torrent='cd ~/Descargas/Torrente; ls'

### clase
alias fric='cd ~/Documentos/FrIC; ls'
alias fic6='cd ~/Documentos/FrIC/6º\ ano; ls'
alias fictfg='cd ~/Documentos/FrIC/tfg; ls'

alias toxtrac='conda activate toxtrac; ls'

