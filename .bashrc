# Set PROMPT_DIRTRIM to truncate directory path to 3 levels
PROMPT_DIRTRIM=3

# Set a colorful prompt with shortened path in a box
PS1='\[\e[1;32m\]\u \[\e[1;34m\][\[\e[1;34m\]\w\[\e[1;34m\]]\[\e[0m\]: '

# Colorize ls
alias ls='ls --color=auto'
alias ll='ls -ahlF'
alias grep='grep --color=auto'

# Configure history settings
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth

# Enable color output for ls command
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
