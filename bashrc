#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#[ -n "$XTERM_VERSION" ] && transset-df --dec 0.05 --id "$WINDOWID" >/dev/null

alias ls='ls --color=auto -F'
alias q='exit'
alias fucking='sudo'
alias gchch='gcc'


alias nm-applet_reset="killall nm-applet > /dev/null ;nohup nm-applet &"


PS1="\[\033[93m\][\[\033[1;97m\]\$?\
\[\033[93m\]]\[\033[1;31m\]\u\[\033[97m\]@\
\[\033[32m\]\h\[\033[93m\][\[\033[96m\]\w\
\[\033[93m\]]\[\033[97m\]#\[\033[m\]"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/opt/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/opt
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/opt/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
