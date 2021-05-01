#! ZSHRC
#+ Autor:	Ran#
#+ Creado:	11/09/2020 16:55:34
#+ Editado:	11/09/2020 18:34:27

#
#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#

# as cores do prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# para a historia de comandos
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt APPEND_HISTORY # non eliminar o doutras sesións
setopt INC_APPEND_HISTORY # engadir os comandos ao ser escritos non ao sair do shell
#setopt HIST_EXPIRE_DUPS_FIRST # eliminar primeiro os duplis
setopt HIST_IGNORE_DUPS # que non garde os duplicados
#setopt HIST_FIND_NO_DUPS # ignora duplicados na búsqueda
setopt HIST_REDUCE_BLANKS # elimina as linhas en branco do historial

# corrección zsh
#setopt CORRECT
#setopt CORRECT_ALL

# completación básica do tab
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# autocd
setopt AUTO_CD

# modo vi
bindkey -v
export KEYTIMEOUT=1
# para que use as teclas vim no menú de dobre tab
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# cambiar o cursor dependente do modo vi
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
# editar liña nun buffer vim con ctrl+e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#[ -f /root/.config/aliasrc ] && source /root/.config/aliasrc || echo a
source ~/.config/aliasrc

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
