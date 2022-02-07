# vim:fileencoding=utf-8:ft=conf:foldmethod=marker

# fortune, to display a quote at top
# echo -e "\e[1m\e[34m$(fortune -s -e literature work songs-poems wisdom startrek people)\e[0m"
 
# PATHS and ENV Variables {{{
# appending path from https://stackoverflow.com/a/18077919/10356784
# path+=('/opt/android-studio-2020.3.1.24-linux/android-studio/bin')
# path+=("$HOME/bin") # $HOME/bin 
# GOLANG (https://www.digitalocean.com/community/tutorials/how-to-install-go-and-set-up-a-local-programming-environment-on-ubuntu-18-04)
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
# RUBY
#path+=('/home/subhajit/.gem/ruby/2.7.0/bin')
#path+=('/home/subhajit/.local/bin')
# or prepend
# path=('/home/david/pear/bin' $path)
# JAVA
export JAVA_HOME="/usr/bin/java"
# hyperledger executables;
export PATH=/home/subhajit/MyProjects/Hyperledger/fabric-samples/bin:$PATH
# }}}

# Path to your oh-my-zsh installation.
export ZSH="/home/subhajit/.oh-my-zsh"

# THEME
#ZSH_THEME="typewritten"
ZSH_THEME="subhajit"
# typewritten theme settings{{{
# source : https://typewritten.dev/#/prompt_customization
TYPEWRITTEN_PROMPT_LAYOUT="pure" # singleline, half_pure , pure, singleline_verbose, and multiline
# TYPEWRITTEN_SYMBOL="❯"
# TYPEWRITTEN_ARROW_SYMBOL="->"
# TYPEWRITTEN_RELATIVE_PATH="git" # git, home, adaptive, or off
# TYPEWRITTEN_CURSOR="underscore" # underscore, beam, block, or terminal
# TYPEWRITTEN_RIGHT_PROMPT_PREFIX="#"
# TYPEWRITTEN_DISABLE_RETURN_CODE=true
#}}}

plugins=(
    fast-syntax-highlighting
    zsh-autosuggestions
    command-not-found 
    colored-man-pages
    history-substring-search
    zsh-fzf-history-search
)

# PIP PACKAGE SEARCH{{{
alias pip='function _pip(){
    if [ $1 = "search" ]; then
        pip_search "$2";
    else pip "$@";
    fi;
};_pip'
# }}}

# NODE VERSION MANAGER{{{
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm() {
    unset -f nvm
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    nvm "$@"
}
node() {
    unset -f node
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}
npm() {
    unset -f npm
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}
# }}}

# PYENV (PYTHON VERSION MANAGER){{{
# export PATH="$HOME/.pyenv/bin:$PATH"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1 # change prompt when activating venv
# eval "$(pyenv init -)"
# eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"
pyenv() {
    unset -f pyenv
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init - )"
    eval "$(pyenv init --path)"
    eval "$(pyenv virtualenv-init -)"
    pyenv "$@"
}
# }}}

# Plugin options {{{
#  zsh-fzf-history-search {{{
DISABLE_FZF_AUTO_COMPLETION="true"
# }}}
# }}}

source $ZSH/oh-my-zsh.sh

# ALIASES{{{
alias bat="batcat" # bat is installed as batcat in debian
alias tree2="tree -a -L 2"
alias tree1="tree -a -L 1"
alias pipes="/home/subhajit/Downloads/applications/pipes.sh/pipes.sh"
alias ytdla="youtube-dl --extract-audio --add-metadata --xattrs --embed-thumbnail --audio-quality 0 --audio-format mp3"
alias ytdl="youtube-dl --verbose --no-check-certificate --prefer-ffmpeg --add-metadata --all-subs --restrict-filenames --embed-thumbnail --merge-output-format mp4 --recode-video mp4" #best video quality
alias cool-retro-terminal="/home/subhajit/Downloads/applications/cool-retro-terminal/Cool-Retro-Term-1.1.1-x86_64.AppImage"
alias nerdfetch="/home/subhajit/Downloads/applications/nerdfetch/nerdfetch"
alias rxfetch="/home/subhajit/Downloads/applications/rxfetch/rxfetch"
alias shiori="/home/subhajit/Downloads/applications/shiori/shiori-linux-amd64"
alias getwmclass="xprop | grep WM_CLASS | awk '{print $4}'" # get window manager class in x11
alias warpcheck="curl https://www.cloudflare.com/cdn-cgi/trace/" # check if connected to cloudflare warp
alias icat="kitty +kitten icat --place 20x20@10x10 /home/subhajit/Downloads/wallpapers/pfp/external-content.duckduckgo.com.jpeg" # for displaying image inside kitty
# }}}

