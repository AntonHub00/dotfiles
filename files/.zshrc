# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/raven/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="af-magic" #option
# ZSH_THEME="eastwood" #option
# ZSH_THEME="sunaku" #option
# ZSH_THEME="avit" #option
# ZSH_THEME="agnoster" #option
# ZSH_THEME="robbyrussell" #option
# ZSH_THEME="spaceship" #option

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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  nvm
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Aliases-----------------------------------------------------------------------
export EDITOR_BARE="nvim"

# Alias for ping
alias pin='ping -c 3 8.8.8.8'

# Alias for XAMPP service
alias xampp='sudo /opt/lampp/xampp'

# Alias for mysql (XAMPP)
alias mysql_xampp='/opt/lampp/bin/mysql'

# Alias for zsh config file
alias zshconf="$EDITOR_BARE ~/.zshrc"

# Alias for neovim config file
alias nvimconf="$EDITOR_BARE ~/.config/nvim/init.lua"

# Alias for tmux config file
alias tmuxconf="$EDITOR_BARE ~/.tmux.conf"

# Alias for alacritty config file
alias alacrittyconf="$EDITOR_BARE ~/.config/alacritty/alacritty.yml"

# Alias for kitty config file
alias kittyconf="$EDITOR_BARE ~/.config/kitty/kitty.conf"

# Alias for current monitor setup
alias set_monitors="$HOME/.screenlayout/two_monitors.sh"

# Alias for kitty config file
alias bat='/usr/bin/batcat'

# Open directory in the current VSCode instance
alias c.="code -r ."

# Kubectl
alias k="kubectl"

# PATH-------------------------------------------------------------------------

# Add my scripts to the path
export PATH=$PATH:$HOME/.scripts

export PATH=$PATH:$HOME/.local/bin

# My settings------------------------------------------------------------------

# Default editor
export EDITOR="$EDITOR_BARE"
export VISUAL=$EDITOR

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Android
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/28.0.3

# Gradle
export PATH=$PATH:$HOME/Software/other/gradle-7.0.2/bin

# Java JRE from Android Studio
export PATH=$PATH:$HOME/Software/other/android-studio/jre/bin

# Golang
export PATH=$PATH:/usr/local/go/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add direnv bin
export PATH="$PATH:$HOME/Software/others/direnv"

# Add kubectx and kubens bins
export PATH="$PATH:$HOME/Software/repos/kubectx"

# Add neovim bin
export PATH="$PATH:$HOME/Software/others/nvim/bin"

# Add postman bin
export PATH="$PATH:$HOME/Software/others/postman/Postman"

# Just needed in dwm (or another window manager) for the JVM (Java Virtual
# Machine) to believe it is running a different window manager.
# It is useful for IntelliJ IDEA, for example. This prevents a "blank screen"
# when opening the IDE.
# More info at https://tools.suckless.org/x/wmname/
# wmname compiz

# Fix invisible commments in the terminal
export ZSH_HIGHLIGHT_STYLES[comment]='none'

export NODE_VERSIONS="$NVM_DIR/versions/node"
export NODE_VERSION_PREFIX=v

eval "$(direnv hook zsh)"

# eval "$(ssh-agent)"

# Kubectl autocompletion
source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
