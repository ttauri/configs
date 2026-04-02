# P10k instant prompt (must be at top)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Environment
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export PATH="$HOME/.local/bin:$PATH"

# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Keybindings - emacs style (Ctrl+A, Ctrl+E, Ctrl+F, etc.)
bindkey -e

# Completion
autoload -Uz compinit
compinit -C
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Aliases
alias vim="nvim"
alias lg="lazygit"
alias ls="eza"
alias ll="eza -la"
alias dps="docker ps"
alias dti="docker exec -ti"


# Git aliases
alias g="git"
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gd="git diff"
alias gco="git checkout"
alias gl="git log --oneline -20"

# fzf
source <(fzf --zsh)

# Custom fzf project switcher
bindkey -r '^T'
bindkey -s '^T' 'cd $(find ~/code -mindepth 1 -maxdepth 3 -type d | fzf)\n'

# zoxide (smart cd)
eval "$(zoxide init zsh)"

# P10k theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

