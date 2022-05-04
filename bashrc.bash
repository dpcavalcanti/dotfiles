DOTFILES_DIR=${HOME}/.dotfiles

#Environment Variables
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

#work around to make brew-cask work
alias brew-cask='brew cask'

#Include $HOME/bin directory in the PATH
[ -d $HOME/bin ] && export PATH=$HOME/bin:$PATH

export PATH="/usr/local/bin:/usr/local/opt/curl/bin:${HOME}/.krew/bin:$PATH"

#Defaults for keyboard speed
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
defaults write -g ApplePressAndHoldEnabled -bool false

#Activate brew bash completion 
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

HB_CNF_HANDLER="$(brew --prefix)/Homebrew/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

#add some handy aliases
[ -f "${DOTFILES_DIR}/bash_aliases.bash" ] && source ${DOTFILES_DIR}/bash_aliases.bash

#Change prompt to show handy info
if [ -d "${HOME}/.dotfiles/prompt" ]; then
 __GIT_PROMPT_DIR="${HOME}/.dotfiles/prompt"
 GIT_PROMPT_SHOW_UPSTREAM=1
 [ -f ${HOME}/.dotfiles/prompt/gitprompt.sh ] && source ${HOME}/.dotfiles/prompt/gitprompt.sh
fi
