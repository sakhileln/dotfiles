# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to JAVA_HOME for development purposes
export JAVA_HOME=/usr/lib64/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH
# >>>>>>>>>>>> android-studio SDK >>>>>>>
export PATH=$PATH:/opt/android-studio/bin

# >>>>>>>> EDITOR >>>>>>>>>>>
export EDITOR='lvim'
export VISUAL='lvim'

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME='sonicradish'
# ZSH_THEME_RANDOM_CANDIDATES=(
#  'theunraveler'
#  "suvash"
#  "fwalch"
#  "fino"
#  'lambda'
#  'mlh'
#  'wezm+'
#  'tjkirch'
#  'dieter'
#  'wuffers'
#  'strug'
#  'arrow'
#  'robbyrussell'
#  'miloshadzic'
#  'nanotech'
#  'garyblessington'
#  'simple'
#  'eastwood'
#  'sonicradish'
#)

# ZSH_THEME="random" # set by `omz`

plugins=( 
    git
    suse
    zsh-autosuggestions
    zsh-syntax-highlighting
    python
)

source $ZSH/oh-my-zsh.sh

# check the suse plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/suse/suse.plugin.zsh

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='sudo shutdown now'
alias v="lvim"
