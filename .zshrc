# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# source ~/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"


alias config='/usr/bin/git --git-dir=/home/manuel/.dotfiles/ --work-tree=/home/manuel'
alias ls='exa'
alias ll='exa -lhgH --icons'
alias la='ll -a'
alias tree='exa -T --icons'

# git bare dotfiles
alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#hyprland
alias hconf='vim $HOME/.config/hypr/hyprland.conf'

alias uni='cd ~/Documenti/UNI/23_24/'
alias lab='uni;cd laboratorio_alg/ASD/laboratorio_6cfu'
alias mdp='uni;cd metodologie_programmazione/MdP'
alias fdi='uni;cd fondamenti_informatica/FdI'
alias lab_cons='uni;cd laboratorio_alg/code/consegne_lab'
alias calc='uni;cd calcolo_numerico/CN'
alias itcloud='uni;cd amministrazione_cloud'
alias reti='uni;cd reti_di_calcolatori'
alias tir='uni;cd tirocinio'

alias open='xdg-open'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:$HOME/bin"

alias vim='lvim'
alias sshuni='ssh manuel.diagostino@studenti.unipr.it@didattica-linux.unipr.it'

# opam configuration
[[ ! -r /home/manuel/.opam/opam-init/init.zsh ]] || source /home/manuel/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

export MY_JAVA_LIB="/usr/lib:/usr/local/lib:/usr/java/packages/lib:/usr/lib64:/lib64:/lib:/usr/lib"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib:/usr/lib/jvm/java-21-openjdk/lib

# export CAML_LD_LIBRARY_PATH="/usr/local/lib:$CAML_LD_LIBRARY_PATH
