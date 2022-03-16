# use rg in fzf
set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

set -x WORK ~/src/wfm
set -x GOPATH $WORK/go
set -x FZFPATH ~/.fzf/bin

# only on clear linux ?
set -x JAVA_HOME /usr/lib/jvm/java-1.13.0-openjdk


set -Ux EDITOR emacsclient -t
# update the path
# set PATH /usr/local/go/bin $PATH
# set PATH $GOPATH/bin $PATH
# set PATH $FZFPATH $PATH
# set PATH /home/lach/.npm-global/bin $PATH

fish_add_path $HOME/bin

source $WORK/wefarm.fish

