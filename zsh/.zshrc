# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/mark/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load standard ZSH widget
#autoload -Uz promptinit
#promptinit

# My prompt
prompt='%F{green}%B%n%b%f @ %F{blue}%B%m%b%f : %F{cyan}%B%~%b%f
%(?.%F{green}%B> %b%f.%F{red}?%? %F{green}%B> %b%f)'

# Fix Interop Error that randomly occurs in vscode terminal when using WSL2
fix_wsl2_interop() {
    for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
        if [[ -e "/run/WSL/${i}_interop" ]]; then
            export WSL_INTEROP=/run/WSL/${i}_interop
        fi
    done
}

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# ALIAS COMMANDS
alias devops="tmux new -s devops"
alias vi="nvim"
alias vim="nvim"
alias nv="nvim"
alias oldvim="\vim"
alias ls="ls -lh --color=auto --group-directories-first"
alias ll="ls -lAh --color=auto --group-directories-first"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Make xclip easy to use
alias clipboard='xclip -selection clipboard'

# Make ssh-add easy
alias ssha='eval $(ssh-agent) && ssh-add ~/.ssh/mark_ed25519'

# Menu to open jobs
alias oj='jobs && echo "Select a job" && read num && fg %$num'

# -------------------------------------------------------------------
# make some commands (potentially) less destructive
# -------------------------------------------------------------------
alias 'rm=rm -i'
alias 'rm -rf=rm -rfi'
# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
