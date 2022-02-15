# [[ $TERM != "screen" ]] && exec tmux

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/fabiano/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="aussiegeek"

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
plugins=(ruby node rails git vscode sublime docker docker-compose react-native tmux)

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

alias search='grep -iRn'

alias gti='git'
alias itg='git'
alias tig='git'
alias igt='git'
alias tgi='git'

[[ -f "$HOME/.security_commands" ]] && source ~/.security_commands

fpath=(/completions /home/fabiano/.oh-my-zsh/plugins/git /home/fabiano/.oh-my-zsh/plugins/ruby /home/fabiano/.oh-my-zsh/functions /home/fabiano/.oh-my-zsh/completions /usr/local/share/zsh/site-functions /usr/share/zsh/vendor-functions /usr/share/zsh/vendor-completions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/AIX /usr/share/zsh/functions/Completion/BSD /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Cygwin /usr/share/zsh/functions/Completion/Darwin /usr/share/zsh/functions/Completion/Debian /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Mandriva /usr/share/zsh/functions/Completion/Redhat /usr/share/zsh/functions/Completion/Solaris /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Completion/openSUSE /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)

autoload -Uz compinit && compinit


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/fabiano/.sdkman"
#[[ -s "/home/fabiano/.sdkman/bin/sdkman-init.sh" ]] && source "/home/fabiano/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:/usr/java/jre1.8.0_251/bin/
export PATH=$PATH:$HOME/.local/idea-IC-202.6397.94/bin/

export NVIM_TUI_ENABLE_TRUE_COLOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1
alias vim='nvim -O'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/fabiano/google-cloud-sdk/path.zsh.inc' ]; then . '/home/fabiano/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/fabiano/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/fabiano/google-cloud-sdk/completion.zsh.inc'; fi

alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'

#alias kubectl='microk8s kubectl'

################################ DOCKER ALIAS COMMANDS START ######################
alias mariadb-up='docker run -it --rm -e MARIADB_ROOT_PASSWORD=root mariadb/server:10.4'

alias jupyter='docker run -t --name jupyter --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/datascience-notebook:33add21fab64'
alias jupyter_console='docker exec -it jupyter bash'
alias backup-ivt='docker run -t --rm --network performit --env-file "$HOME/investtools-workspace/backup-investtools/.env" --volume "$HOME/investtools-workspace/backup-investtools:/app"  backup-investtools_backup ./backup-ivt.sh'

alias swagger-ui='docker run --name swagger-ui -d -p 8444:8080 -e SWAGGER_JSON=/foo/swagger.json -v $PWD:/foo swaggerapi/swagger-ui' 
alias swagger-ui-down='docker rm -f swagger-ui' 

alias docker-arco='docker-compose -f $HOME/investtools-workspace/arco/arco-docker/docker-compose.yml'
alias docker-performit='docker-compose -f $HOME/investtools-workspace/performit/performit-docker/docker-compose.yml'

alias docker-clean='set -x && docker rmi $(docker images --filter "dangling=true" -qa) && docker rm $(docker ps -qa)'
################################ DOCKER ALIAS COMMAND END #########################

################################ TMUX ALIAS COMMAND START ######################
function dev() {
  tmux attach -t $1 || tmux new -s $1 -c $HOME/investtools-workspace/$(echo $2 || $1)
}
alias vpn='tmux attach -t vpn || tmux new -s vpn'
alias vivi="tmux attach -t vivi || tmux new -s vivi -c $HOME/investtools-workspace/vivi"
alias informativos-admin="tmux attach -t informativos || tmux new -s informativos -c $HOME/investtools-workspace/informativos/informativos-admin/"
alias fund_comparison="tmux attach -t fund_comparison || tmux new -s fund_comparison -c $HOME/investtools-workspace/informativos/fund_comparison/"
alias stocks_dividends="tmux attach -t stocks_dividends || tmux new -s stocks_dividends -c $HOME/investtools-workspace/informativos/stocks_dividends/"
alias informativos-api="tmux attach -t informativos-api || tmux new -s informativos-api -c $HOME/investtools-workspace/informativos/informativos-api"
alias operation-items="tmux attach -t operation-items || tmux new -s operation-items -c $HOME/investtools-workspace/performit/operation-items"
alias performitrails="tmux attach -t performitrails || tmux new -s performitrails -c $HOME/investtools-workspace/performit/performitrails"
alias arco-api="tmux attach -t arco-api || tmux new -s arco-api -c $HOME/investtools-workspace/arco/arco-api"
alias arco-compliance="tmux attach -t arco-compliance || tmux new -s arco-compliance -c $HOME/investtools-workspace/arco/arco-compliance"
alias arco-contracts="tmux attach -t arco-contracts || tmux new -s arco-contracts -c $HOME/investtools-workspace/arco/arco-contracts"
alias arco-fix="tmux attach -t arco-fix || tmux new -s arco-fix -c $HOME/investtools-workspace/arco/arco-fix"
alias arconit-frontend="tmux attach -t arconit-frontend || tmux new -s arconit-frontend -c $HOME/investtools-workspace/arco/arconit-frontend"
alias arconit-base="tmux attach -t arconit-base || tmux new -s arconit-base -c $HOME/investtools-workspace/arco/arconit-base"
alias arconit-portfolio-online="tmux attach -t arconit-portfolio-online || tmux new -s arconit-portfolio-online -c $HOME/investtools-workspace/arco/arconit-portfolio-online"
alias arconit-cruds="tmux attach -t arconit-cruds || tmux new -s arconit-cruds -c $HOME/investtools-workspace/arco/arconit-cruds"
alias grand-bazaar="tmux attach -t grand-bazaar || tmux new -s grand-bazaar -c $HOME/investtools-workspace/grand-bazaar"
################################ TMUX ALIAS COMMAND END #########################


################################ RAILS ALIAS COMMAND START ######################
alias rails='docker run -it --rm -w /app -v $PWD:/app rails rails'
alias rubocop='docker run -t --rm -w /app --volume "$PWD:/app" rubocop rubocop'
################################ RAILS ALIAS COMMAND END #########################


