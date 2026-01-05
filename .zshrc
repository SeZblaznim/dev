# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/krystof/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

hyfetch
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias uwu='sudo'
alias update='uwu pacman -Syu && yay'
alias c='clear && hyfetch'
alias PAYDAY='legendary launch 7d6b8784bab94d6cac5fea5ab7bb07a4 &'
alias kitty +kitten ssh user@host
alias cc='sudo pacman -Sc'


# pnpm
export PNPM_HOME="/home/krystof/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export WLR_NO_HARDWARE_CURSORS=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
