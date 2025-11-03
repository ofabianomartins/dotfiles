[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
# [[ $TERM != "screen" ]] && exec 

export GROK_API_KEY=your_api_key_here


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/fabiano/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="clean"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(ruby node rails git vscode sublime docker docker-compose react-native  zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias config='/usr/bin/git --git-dir=/home/fabiano/.cfg/ --work-tree=/home/fabiano'

alias ivtvpn="sudo openvpn --data-ciphers AES-128-CBC --config ~/.ssh/VPN-fabiano.martins03-Investtools.ovpn --auth-user-pass ~/.ssh/vpnpass.txt"

alias genialvpn="openfortivpn-webview 'brvpn.bancoplural.com:10443' --realm=terceiros | sudo openfortivpn --cookie-on-stdin --realm=terceiros"

alias search='grep -iERn'

alias gti='git'
alias itg='git'
alias igt='git'
alias tig='git'
alias tgi='git'
alias got='git'
alias gut='git'

alias tf="terraform"

neofetch

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

fpath=(/completions /home/fabiano/.oh-my-zsh/plugins/git /home/fabiano/.oh-my-zsh/plugins/ruby /home/fabiano/.oh-my-zsh/functions /home/fabiano/.oh-my-zsh/completions /usr/local/share/zsh/site-functions /usr/share/zsh/vendor-functions /usr/share/zsh/vendor-completions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/AIX /usr/share/zsh/functions/Completion/BSD /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Cygwin /usr/share/zsh/functions/Completion/Darwin /usr/share/zsh/functions/Completion/Debian /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Mandriva /usr/share/zsh/functions/Completion/Redhat /usr/share/zsh/functions/Completion/Solaris /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Completion/openSUSE /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)

autoload -Uz compinit && compinit

export PATH=$PATH:/usr/java/jre1.8.0_251/bin/
export PATH=$PATH:$HOME/.local/kafka_2.12-2.6.2/bin/
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/.cabal/bin/xmonad


alias rank='sort | uniq -c | sort -nr | head'

################################ DOCKER ALIAS COMMANDS START ######################
alias mariadb-up='docker run -it --rm -e MARIADB_ROOT_PASSWORD=root mariadb/server:10.4'

alias update_system='sudo apt update && sudo apt upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y'

alias jupyter_build='docker build -t jupyter_pessoal ${HOME}/.local/jupyter/'
alias jupyter='docker run -t --name jupyter --rm -p 8888:8888 -v "${PWD}":/home/jovyan jupyter_pessoal'
alias jupyter_spark_build='docker build -t jupyter_spark_pessoal ${HOME}/.local/jupyter_spark/'
alias jupyter_spark='docker run -t --name jupyter --rm -p 8888:8888 -v "${PWD}":/home/jovyan jupyter_spark_pessoal'

alias docker-ivt-admin='docker compose -f $HOME/investtools-workspace/ivt-admin/ivt-admin-docker/docker-compose.yml'

alias docker-clean='set -x && docker rmi $(docker images --filter "dangling=true" -qa) && docker rm $(docker ps -qa)'
################################ DOCKER ALIAS COMMAND END #########################

alias kafka_ui_homolog='docker run --rm -p 8089:8080 -e KAFKA_CLUSTERS_0_NAME=local -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=b-2.kakfainformativosstg.bwr7c1.c1.kafka.us-east-1.amazonaws.com:9092,b-1.kakfainformativosstg.bwr7c1.c1.kafka.us-east-1.amazonaws.com:9092 provectuslabs/kafka-ui:latest'
alias kafka_ui_prod='docker run --rm -p 8088:8080 -e KAFKA_CLUSTERS_0_NAME=local -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=b-2.kakfainformativosstg.bwr7c1.c1.kafka.us-east-1.amazonaws.com:9092,b-1.kakfainformativosstg.bwr7c1.c1.kafka.us-east-1.amazonaws.com:9092 provectuslabs/kafka-ui:latest'
alias kafka_auth_ui_homolog='docker run --rm -p 8089:8080 -e KAFKA_CLUSTERS_0_NAME=local -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=b-1.kafkastgauth.yetf1n.c11.kafka.us-east-1.amazonaws.com:9092,b-2.kafkastgauth.yetf1n.c11.kafka.us-east-1.amazonaws.com:9092 provectuslabs/kafka-ui:latest'

################################  ALIAS COMMAND START ######################

alias posgraduacao=" attach -t posgraduacao || zellij -s posgraduacao -c $HOME/posgraduacao"

#export CLASSPATH=".:/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH"
#alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
#alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

export PATH="$PATH:/opt/nvim-linux64/bin"

alias vim="nvim -O"
alias cvim="cursor --no-sandbox"

alias obsidian="~/bin/Obsidian-1.8.10.AppImage --no-sandbox"

alias actual_prd_2fa="oathtool --totp -b MFPKTRG23GD7VEZDICGSD7JVEYVWJPPK3VNIMJYUOHURMV7QH7RA"

ssh-agent -s > /dev/null
ssh-add ~/.ssh/investtools_git > /dev/null &> /dev/null
ssh-add ~/.ssh/investtools_git_rsa > /dev/null &> /dev/null
