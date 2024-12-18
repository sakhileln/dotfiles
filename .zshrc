
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git 
	zsh-autosuggestions 
	zsh-syntax-highlighting 	
	)

source $ZSH/oh-my-zsh.sh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

#alias for ls
#alias ls='exa --icons'
alias ll='ls -l'
alias la='ls -la'
alias vim='lvim'
alias vi='lvim'
#
# for ranger to set nvim as default editor
#
export EDITOR='lvim'

export PATH=/home/xyz/.local/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To add a extra blank line after every command 
precmd(){
  precmd(){
    echo
  }
}
