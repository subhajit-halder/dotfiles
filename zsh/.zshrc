zmodload zsh/zprof


# running fortune at every startup
# fortune literature | /home/subhajit/.gem/ruby/2.7.0/bin/lolcat -p
# below is for italic bold
# echo -e "\e[3m\e[1m$(fortune -s -e literature work songs-poems wisdom people)\e[0m"
# below is for bold only
# echo -e "\e[1m$(fortune -s -e literature work songs-poems wisdom people)\e[0m"
echo -e "\e[1m\e[34m$(fortune -s -e literature work songs-poems wisdom startrek people)\e[0m"

 
#██████╗░░█████╗░████████╗██╗░░██╗░██████╗
#██╔══██╗██╔══██╗╚══██╔══╝██║░░██║██╔════╝
#██████╔╝███████║░░░██║░░░███████║╚█████╗░
#██╔═══╝░██╔══██║░░░██║░░░██╔══██║░╚═══██╗
#██║░░░░░██║░░██║░░░██║░░░██║░░██║██████╔╝
#╚═╝░░░░░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# for ruby/gem in /home/subhajit/.gem/ruby/2.7.0/bin
# export PATH="/home/subhajit/.gem/ruby/2.7.0/bin"
# appending path from https://stackoverflow.com/a/18077919/10356784
#path+=('/home/subhajit/.gem/ruby/2.7.0/bin')
path+=('/opt/android-studio-2020.3.1.24-linux/android-studio/bin')
path+=('/home/subhajit/bin')
#path+=('/home/subhajit/.local/bin')
path+=('/usr/local/go/bin')
path+=('/home/subhajit/go/bin')
# or prepend
# path=('/home/david/pear/bin' $path)
# export to sub-processes (make it inherited by child processes)
export PATH
export JAVA_HOME="/usr/bin/java"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
#
# export WEECHAT_HOME="~/.config/weechat"
 
# Lazy loading NVM
# settings of nvm zsh plugin
export NVM_LAZY=1
# export NVM_AUTOLOAD=1
#
#Disable evalcache
#export ZSH_EVALCACHE_DISABLE=true

#░█████╗░██╗░░██╗  ███╗░░░███╗██╗░░░██╗  ███████╗░██████╗██╗░░██╗
#██╔══██╗██║░░██║  ████╗░████║╚██╗░██╔╝  ╚════██║██╔════╝██║░░██║
#██║░░██║███████║  ██╔████╔██║░╚████╔╝░  ░░███╔═╝╚█████╗░███████║
#██║░░██║██╔══██║  ██║╚██╔╝██║░░╚██╔╝░░  ██╔══╝░░░╚═══██╗██╔══██║
#╚█████╔╝██║░░██║  ██║░╚═╝░██║░░░██║░░░  ███████╗██████╔╝██║░░██║
#░╚════╝░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░  ╚══════╝╚═════╝░╚═╝░░╚═╝
#
# Path to your oh-my-zsh installation.
export ZSH="/home/subhajit/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="juanghurtado"
ZSH_THEME="typewritten"

# typewritten variables
TYPEWRITTEN_PROMPT_LAYOUT="pure"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    nvm
    colored-man-pages 
    themes 
    web-search 
    copydir
    zsh-autosuggestions
    command-not-found 
)
# zsh-autocomplete 
# evalcache

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


#░█████╗░██╗░░░░░██╗░█████╗░░██████╗███████╗░██████╗
#██╔══██╗██║░░░░░██║██╔══██╗██╔════╝██╔════╝██╔════╝
#███████║██║░░░░░██║███████║╚█████╗░█████╗░░╚█████╗░
#██╔══██║██║░░░░░██║██╔══██║░╚═══██╗██╔══╝░░░╚═══██╗
#██║░░██║███████╗██║██║░░██║██████╔╝███████╗██████╔╝
#╚═╝░░╚═╝╚══════╝╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝╚═════╝░

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias bat="batcat" # bat is installed as batcat in debian
alias tree2="tree -a -L 2"
alias tree1="tree -a -L 1"
alias pipes="/home/subhajit/Downloads/applications/pipes.sh/pipes.sh"
alias ytdla="youtube-dl --extract-audio --add-metadata --xattrs --embed-thumbnail --audio-quality 0 --audio-format mp3"
alias ytdl="youtube-dl --verbose --no-check-certificate --prefer-ffmpeg --add-metadata --all-subs --restrict-filenames --embed-thumbnail --merge-output-format mp4 --recode-video mp4" #best video quality
alias cool-retro-terminal="/home/subhajit/Downloads/applications/cool-retro-terminal/Cool-Retro-Term-1.1.1-x86_64.AppImage"
alias nerdfetch="/home/subhajit/Downloads/applications/nerdfetch/nerdfetch"
alias rxfetch="/home/subhajit/Downloads/applications/rxfetch/rxfetch"
# alias quickemu="/home/subhajit/Downloads/applications/quickemu/quickemu"
# alias libgen="/home/subhajit/Downloads/applications/libgen-cli-v1.0.7-linux"
#
# self hosted bookmark manager
alias shiori="/home/subhajit/Downloads/applications/shiori/shiori-linux-amd64"
#
# get window manager class in x11
alias getwmclass="xprop | grep WM_CLASS | awk '{print $4}'"
# 
# check if connected to cloudflare warp
alias warpcheck="curl https://www.cloudflare.com/cdn-cgi/trace/"
#
# for displaying image inside kitty
alias icat="kitty +kitten icat --place 20x20@10x10 /home/subhajit/Downloads/wallpapers/pfp/external-content.duckduckgo.com.jpeg"

# █▀█ █░░ █░█ █▀▀ █ █▄░█   █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
# █▀▀ █▄▄ █▄█ █▄█ █ █░▀█   ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█

# zsh-autocomplete settings 
# source /home/subhajit/.oh-my-zsh/custom/plugin-config/zsh-autocomplete

# PIP PACKAGE SEARCH
alias pip='function _pip(){
    if [ $1 = "search" ]; then
        pip_search "$2";
    else pip "$@";
    fi;
};_pip'


# NODE VERSION MANAGER
export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PYENV (PYTHON VERSION MANAGER)
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
#_evalcache pyenv init -
#_evalcache pyenv init --path
#_evalcache pyenv virtualenv-init -


# zprof

# timezsh() {
#  shell=${1-$SHELL}
#  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
#}
