if [[ "$TMUX" = "" ]]; then
    tmux
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

setopt append_history
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt nomatch
setopt notify
setopt share_history

source ~/.config/zsh/environment.zsh
source ~/.config/zsh/completion.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/p10k.zsh

if [[ -f "$HOME/.config/arch-specific/arch-zsh.zsh" ]]; then
    source ~/.config/arch-specific/arch-zsh.zsh
fi

source ~/.zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
