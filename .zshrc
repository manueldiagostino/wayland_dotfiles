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
alias ll='exa -lhg --icons'
alias la='ll -a'
alias tree='exa -T --icons'

# git bare dotfiles
alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#hyprland
alias hconf='vim $HOME/.config/hypr/hyprland.conf'
