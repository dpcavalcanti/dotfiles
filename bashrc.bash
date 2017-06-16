DOTFILES_DIR=${HOME}/.dotfiles

#Include $HOME/bin directory in the PATH
if [ -d $HOME/bin ]; then
    export PATH=$HOME/bin:$PATH
fi

#add some handy aliases
if [ -f "${DOTFILES_DIR}/bash_aliases.bash" ]; then
    source ${DOTFILES_DIR}/bash_aliases.bash
fi

#Change prompt to show handy info
if [ -d "${HOME}/.dotfiles/prompt" ]; then
 __GIT_PROMPT_DIR="${HOME}/.dotfiles/prompt"
 GIT_PROMPT_SHOW_UPSTREAM=1
 [ -f ${HOME}/.dotfiles/prompt/gitprompt.sh ] && source ${HOME}/.dotfiles/prompt/gitprompt.sh
fi