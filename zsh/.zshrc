# vim:fileencoding=utf-8:ft=conf:foldmethod=marker

# fortune, to display a quote at top
# echo -e "\e[1m\e[34m$(fortune -s -e literature wisdom startrek people)\e[0m"
# echo -e "\e[1m\e[34m$(fortune -s -e literature)\e[0m"
 
# PATHS and ENV Variables {{{
# tempdir 
export TMPDIR="$HOME/TMPDIR/"
# appending path from https://stackoverflow.com/a/18077919/10356784
# path+=('/opt/android-studio-2020.3.1.24-linux/android-studio/bin')
# path+=("$HOME/bin") # $HOME/bin 
# GOLANG (https://www.digitalocean.com/community/tutorials/how-to-install-go-and-set-up-a-local-programming-environment-on-ubuntu-18-04)
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
# RUBY
#path+=('$HOME/.gem/ruby/2.7.0/bin')
path+=('/home/subhajit/.local/bin')
# or prepend
# path=('/home/david/pear/bin' $path)
# JAVA
export JAVA_HOME="/usr/bin/java"
# Python virtualenv
export WORKON_HOME=~/.virtualenvs
# hyperledger executables;
#export PATH=$HOME/MyProjects/Hyperledger/fabric-samples/bin:$PATH
# changing npm default directory to resolve permission errors
# source : https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally
export PATH=~/.npm-global/bin:$PATH
# RUST 
export PATH=$PATH:/home/subhajit/cargo/bin
# }}}

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# fzf settings
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border=sharp'

# THEME
ZSH_THEME="typewritten"
# typewritten theme settings
# source : https://typewritten.dev/#/prompt_customization
TYPEWRITTEN_PROMPT_LAYOUT="singleline" # singleline, half_pure , pure, singleline_verbose, and multiline

plugins=(
    fast-syntax-highlighting
    zsh-autosuggestions
    command-not-found 
    colored-man-pages
    history-substring-search
    zsh-fzf-history-search
)

# # PIP PACKAGE SEARCH{{{
# alias pip='function _pip(){
#     if [ $1 = "search" ]; then
#         pip_search "$2";
#     else pip "$@";
#     fi;
# };_pip'
# # }}}

# Time zsh
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# plugin options
DISABLE_FZF_AUTO_COMPLETION="true"

# Source https://ohmyz.sh
source $ZSH/oh-my-zsh.sh

# ALIASES{{{
alias bat="batcat" # bat is installed as batcat in debian
alias tree2="tree -a -L 2"
alias tree1="tree -a -L 1"
alias pipes="$HOME/Downloads/applications/pipes.sh/pipes.sh"
# yt-dlp reference: https://write.corbpie.com/downloading-youtube-videos-and-playlists-with-yt-dlp/
alias ytdlp="yt-dlp -f 'bv[height=1080][ext=mp4]+ba[ext=m4a]' --merge-output-format mp4"
#best quality mp3: yt-dlp -f 'ba' -x --audio-format mp3 https://www.youtube.com/watch?v=1La4QzGeaaQ -o '%(id)s.mp3'
alias ytdlpa="yt-dlp -f 'ba' -x --audio-format mp3 "
alias cool-retro-terminal="$HOME/Downloads/applications/cool-retro-terminal/Cool-Retro-Term-1.1.1-x86_64.AppImage"
alias nerdfetch="$HOME/Downloads/applications/nerdfetch/nerdfetch"
alias rxfetch="$HOME/Downloads/applications/rxfetch/rxfetch"
alias shiori="$HOME/Downloads/applications/shiori/shiori-linux-amd64"
alias getwmclass="xprop | grep WM_CLASS | awk '{print $4}'" # get window manager class in x11
alias warpcheck="curl https://www.cloudflare.com/cdn-cgi/trace/" # check if connected to cloudflare warp
alias icat="kitty +kitten icat --place 20x20@10x10 $HOME/Downloads/wallpapers/pfp/external-content.duckduckgo.com.jpeg" # for displaying image inside kitty
alias 4chanDownloader="python3 $HOME/Downloads/applications/4chan-downloader/inb4404.py"
# }}}

# SOURCE ASDF
. $HOME/.asdf/asdf.sh

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# virtualenvwrapper
# . $(asdf where python)/bin/virtualenvwrapper.sh

# direnv
eval "$(asdf exec direnv hook zsh)"
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
