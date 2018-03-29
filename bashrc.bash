DOTFILES_DIR=${HOME}/.dotfiles

#Environment Variables
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

#work around to make brew-cask work
alias brew-cask='brew cask'

#Include $HOME/bin directory in the PATH
[ -d $HOME/bin ] && export PATH=$HOME/bin:$PATH

#Activate Docker commands completions
[ -f /usr/local/etc/bash_completion.d/docker ] || ln -s ~/Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
[ -f /usr/local/etc/bash_completion.d/docker-machine ] || ln -s ~/Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
[ -f /usr/local/etc/bash_completion.d/docker-compose ] || ln -s ~/Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose

#Activate brew bash completion 
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


#add some handy aliases
[ -f "${DOTFILES_DIR}/bash_aliases.bash" ] && source ${DOTFILES_DIR}/bash_aliases.bash

#Change prompt to show handy info
if [ -d "${HOME}/.dotfiles/prompt" ]; then
 __GIT_PROMPT_DIR="${HOME}/.dotfiles/prompt"
 GIT_PROMPT_SHOW_UPSTREAM=1
 [ -f ${HOME}/.dotfiles/prompt/gitprompt.sh ] && source ${HOME}/.dotfiles/prompt/gitprompt.sh
fi
