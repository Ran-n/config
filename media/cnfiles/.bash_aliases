#! ALIASES
#+ Autor:	Ran#
#+ Creado:	03/2020
#+ Editado:	14/06/2020 14:33:33

## para poder usar os alias co sudo
sudo() { if alias "$1" &> /dev/null ; then $(type "$1" | sed -E 's/^.*`(.*).$/\1/') "${@:2}" ; else command sudo $@ ; fi }

## aforro comandos basicos
alias s='sudo'
alias lsa='ls -a'
alias lsl='ls -l'
alias lsla='ls -la'

alias cpwd='pwd | xargs echo -n | xclip -selection clipboard'
#alias proba="f() { echo "$a" }"
alias rbash='source ~/.bashrc'

### pacman
alias update='sudo pacman -Syu --noconfirm'

## comandos programas
### programas externos
alias r='ranger'
alias v='vim'
alias sv='sudo vim'
alias nv='nvim'
alias snv='sudo nvim'
alias xclip='xargs echo -n | xclip -selection clipboard'
alias 7ze='7z e'
alias locate='sudo updatedb; locate'

alias condad='conda deactivate'
alias condaa='conda activate; ls'

alias rmzip='rm *zip*'
alias rm7z='rm *7z*'

### programas e scripts propios
alias md='metadata'
alias mdm='metadata -m'
alias mde='metadata -e'
alias mdc='metadata -c'

## cds no sistema
### Carpetas base
alias cdocs='cd ~/Documentos; ls'
alias cdes='cd ~/Descargas; ls'
alias cmus='cd ~/Música; ls'
alias cmusa='cd ~/Música/Audio; ls'
alias cmusv='cd ~/Música/VideoClips; ls'
alias cfot='cd ~/Imaxes; ls'
alias cvid='cd ~/Vídeos; ls'
alias csw='cd ~/Programas; ls'

alias cscripts='cd ~/Programas/scripts; ls'
alias sc='cd ~/Programas/scripts; ls'
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
alias cfric='cd ~/Documentos/FrIC; ls'
alias ficcp='cd ~/Documentos/FrIC/cp; ls'
alias ficid='cd ~/Documentos/FrIC/id; ls'
alias ficabd='cd ~/Documentos/FrIC/abd; ls'
alias ficcxt='cd ~/Documentos/FrIC/cxt; ls'
alias fictfg='cd ~/Documentos/FrIC/tfg; ls'

alias toxtrac='conda activate toxtrac; ls'
