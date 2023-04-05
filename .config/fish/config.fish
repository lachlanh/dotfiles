# use rg in fzf
set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

set -x WORK ~/src/doc

set -x FZFPATH ~/.fzf/bin


set -x EDITOR emacsclient -t
# update the path
# go bits
# set -x GOPATH $WORK/go
# set PATH /usr/local/go/bin $PATH
# set PATH $GOPATH/bin $PATH

# set PATH /home/lach/.npm-global/bin $PATH

set PATH $FZFPATH $PATH

set PATH $HOME/bin $PATH

# work
#source $WORK/wefarm.fish

# random sway bits
set -x MOZ_ENABLE_WAYLAND 1