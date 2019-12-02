#Aliases-----------------------------------------------------------------------

#Alias for ping
alias pin='ping -c 3 8.8.8.8'

#Alias for XAMPP service
alias xampp='sudo /opt/lampp/xampp'

#Alias for mysql (XAMPP)
alias mysql_xampp='/opt/lampp/bin/mysql'

#Alias for .vimrc file
alias vimrc='nvim ~/.vimrc'

#Alias for init.vim (neovim config file) file
alias nvim_init='nvim ~/.config/nvim/init.vim'

#Alias for .zshrc file
alias zshrc='nvim ~/.zshrc'

#Alias for config.fish file
alias fish_config='nvim ~/.config/fish/config.fish'

#Alias for ll -a
alias l='ll -a'

#Sets (exports)-----------------------------------------------------------------------

#neovim as default editor
set EDITOR nvim

#Set JAVA_HOME variable
set JAVA_HOME $HOME/Software/jdk1.8.0_221/bin/java
set JAVA_HOME $HOME/Software/jdk1.8.0_221 # VSCode needs it

#Set JRE_HOME variable
set JRE_HOME $HOME/Software/jdk1.8.0_221/jre/bin/java

##Add my composer packages to the path
set PATH $PATH $HOME/.config/composer/vendor/bin

##Add my scripts to the path
set PATH $PATH $HOME/.scripts

##Add Java bins to PATH variable
set PATH $PATH $HOME/Software/jdk1.8.0_221/bin

#Add Javacc bins to PATH variable
set PATH $PATH $HOME/Software/javacc-6.0/bin

##Add NodeJS bins to PATH variable
set PATH $PATH $HOME/Software/node-v10.16.3/bin

#Set TERM to xterm-256color if tmux is not running (Some terminal emulators haven't
# this config as defautl). This for correct colors in neovim inside tmux
# [ -z "$TMUX" ] && export TERM=xterm-256color
