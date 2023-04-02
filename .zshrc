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
alias config='/usr/bin/git --git-dir=/home/manuel/.dotfiles/ --work-tree=/home/manuel'
alias ls='exa'
alias ll='exa -lhgH --icons'
alias la='ll -a'
alias tree='exa -T --icons'

# git bare dotfiles
alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#hyprland
alias hconf='vim $HOME/.config/hypr/hyprland.conf'

alias uni='cd ~/Documenti/UNI/22_23/'
alias lab='uni;cd laboratorio_alg/ASD/laboratorio_6cfu'
alias mdp='uni;cd metodologie_programmazione/MdP'
alias fdi='uni;cd fondamenti_informatica/FdI'
alias lab_cons='uni;cd laboratorio_alg/code/consegne_lab'

