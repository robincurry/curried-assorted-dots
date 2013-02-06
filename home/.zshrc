# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="curry"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails3 rvm bundler git gem brew vi-mode osx cap rake-completion)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/ruby/gems/1.8/gems/:/opt/local/apache2/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin
export PATH=/usr/local/git/bin:$PATH
export PATH=./bin:$PATH
export MANPATH=/usr/local/git/man:$MANPATH
export PERL5LIB=$PERL5LIB:/opt/local/lib/perl5/site_perl/5.8.8/darwin-2level/IO/
export NODE_PATH="/usr/local/lib/node"
export CDPATH=".:~:~/proj/repos"

export EDITOR="mvim -f"
export SVN_EDITOR="mvim -f"
export GIT_EDITOR="mvim -f"
export PROMPT_COMMAND="history -a"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
