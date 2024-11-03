# use rg in fzf
set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

set -x WORK ~/src/ocean

set -x FZFPATH ~/.fzf/bin

set -x EDITOR emacsclient -t

# update the path
# go bits
# set -x GOPATH $WORK/go
# set PATH /usr/local/go/bin $PATH
# set PATH $GOPATH/bin $PATH

# set PATH /home/lach/.npm-global/bin $PATH

fish_add_path -g -p $FZFPATH
fish_add_path -g -p $HOME/bin
fish_add_path -g -p $HOME/bin/flutter/bin

# android bits
# set -x ANDROID_HOME ~/Android/Sdk

# fish_add_path -g -p $ANDROID_HOME/cmdline-tools/latest/bin
# fish_add_path -g -p $ANDROID_HOME/platform-tools

#flutterfire
fish_add_path -g -p $HOME/.pub-cache/bin

#set PATH $FZFPATH $PATH
#set PATH $HOME/bin $PATH

# work
source $WORK/ob.fish

# random sway bits
#set -x MOZ_ENABLE_WAYLAND 1
