#! ALIASES
#+ Autor:	Ran#
#+ Creado:	03/2020
#+ Editado:	22/06/2020 20:08:15

#        ___               _              _ _
#       / / |__   __ _ ___| |__      __ _| (_) __ _ ___  ___  ___
#  /\/|/ /| '_ \ / _` / __| '_ \    / _` | | |/ _` / __|/ _ \/ __|
# |/\// /_| |_) | (_| \__ \ | | |  | (_| | | | (_| \__ \  __/\__ \
#    /_/(_)_.__/ \__,_|___/_| |_|___\__,_|_|_|\__,_|___/\___||___/
#                              |_____|

## para poder usar os alias co sudo
sudo() { 
    if alias "$1" &> /dev/null ; then 
        $(type "$1" | sed -E 's/^.*`(.*).$/\1/') "${@:2}"
    else 
        command sudo "$@"
    fi 
}

## comandos básicos
alias s='sudo'
alias ls='ls --color=always'
alias la='ls -a --color=always'
alias ll='ls -l --color=always'
alias lsla='ls -la --color=always'
alias more=less

alias cpwd='pwd | xargs echo -n | xclip -selection clipboard'
#alias proba="f() { echo "$a" }"
alias rbash='source ~/.bashrc'

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

alias condad='conda deactivate'
alias condaa='conda activate'

alias rmzip='rm *zip*'
alias rm7z='rm *7z*'

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

alias cscripts='cd ~/Programas/scripts; ls'
alias sc='cd ~/Programas/scripts; ls'
alias cconfig='cd ~/Programas/config; ls'
alias cnf='cd ~/Programas/config; ls'
alias ctutos='cd ~/Programas/tutos; ls'
alias cledo='cd ~/Programas/ledo; ls'

alias ulb="cd /usr/local/bin; ls"

# Carpetas de Descargas específicas
alias ctelegram='cd ~/Descargas/Telegram\ Desktop; ls'
alias ctele='cd ~/Descargas/Telegram\ Desktop; ls'
alias cbrave='cd ~/Descargas/Brave; ls'
alias ctorrente='cd ~/Descargas/Torrente; ls'
alias ctorrent='cd ~/Descargas/Torrente; ls'

### clase
alias fric='cd ~/Documentos/FrIC; ls'
alias ficp='cd ~/Documentos/FrIC/cp; ls'
alias ficid='cd ~/Documentos/FrIC/id; ls'
alias ficabd='cd ~/Documentos/FrIC/abd; ls'
alias ficxt='cd ~/Documentos/FrIC/cxt; ls'
alias fictfg='cd ~/Documentos/FrIC/tfg; ls'

alias toxtrac='conda activate toxtrac; ls'

