if [ -d $HOME/bin ]; then
    export PATH=$HOME/bin:$PATH
fi

if [ -f .bash_aliases ]; then
    source .bash_aliases
fi

#export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
#if [[ -f $THEME ]]; then
#    export DEFAULT_USER=`whoami`
#    source $THEME
#fi

#if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
#  GIT_PROMPT_SHOW_UPSTREAM=1
#  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
#  source ~/.bash-git-prompt/gitprompt.sh
#fi

#if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
#    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
#fi
#
