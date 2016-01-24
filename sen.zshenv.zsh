#export
# may need to manually set language environment
#export LANG=zh_CN.UTF-8
#export LC_CTYPE="zh_CN.UTF-8"

#export JAVA_HOME=/usr/lib/jvm/java-7-icedtea
#export JAVA_OPTS='-Dfile.encoding=UTF-8'
#export PYTHONSTARTUP=$HOME/.pythonrc.py

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

#alias
alias vi='vim'
alias df='df -h'
alias du='du -hs'
alias ps='ps -ef'
#@see <http://blog.chinaunix.net/uid-11640640-id-2139790.html>
alias ctagsCpp='ctags -R --languages=c++ --c++-kinds=+px --fields=+aiKSz --extra=+fq'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s bz2='tar -xjvf'
alias -s zip='unzip'

# plugins should be modified in [.zshrc]
# because this file is sourced after all plugins sourced.
# more details are discirbed in sen.sourcePlugins.zsh
case $OSTYPE {
  cygwin*)
    # start gdb
    export CYGWIN="$CYGWIN error_start=gdb -nw %1 %2"
    # generate core dump
    export CYGWIN="$CYGWIN error_start=dumper -d %1 %2"
    ZSH_THEME="ys";;
    # if use zsh-syntax-highlighting, it MUST be the last plugin sourced
    #plugins=(git z vi-mode);;
  linux*)
    ZSH_THEME="gentoo";;
    #plugins=(git z vi-mode zsh-syntax-highlighting);;
  darwin*)
    ZSH_THEME="ys";;
    #plugins=(git osx ruby brew);;
  }

