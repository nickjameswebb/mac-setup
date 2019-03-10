# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Stop zsh from autocompleting CD operations without typing cd
unsetopt AUTO_CD

# This sets the characters that zsh understands as part of a word. Essentially,
# when you hit CTRL-w to delete a word, it will eat these characters too. Most
# importantly, the dash character. So with a path with dashes in it, you can
# use CTRL-w to remove the most recent directory, even if it has dashes! Bliss.
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# ZSH prompt settings
# <return status of previous command> <current directory> <git branch>
PROMPT='${ret_status} %{$fg[cyan]%}%d%{$reset_color%} $(git_prompt_info)'

command -v fasd && eval "$(fasd --init auto)"
