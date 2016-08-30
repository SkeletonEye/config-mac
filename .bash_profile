# modified version of mdo's .bash_profile
# https://github.com/mdo/config/blob/master/.bash_profile

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# Add MySQL to PATH
export PATH="/usr/local/mysql/bin:$PATH"

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bash_profile'
alias edithttpd='sudo atom /etc/apache2/httpd.conf'

## Switch repos
DIR=Work
alias home='cd ~'
alias work='cd ~/${DIR}'
