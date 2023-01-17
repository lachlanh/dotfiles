# use rg in fzf
set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

set -x WORK ~/src/doc
set -x GOPATH $WORK/go
set -x FZFPATH ~/.fzf/bin

set -x JAVA_HOME /opt/homebrew/opt/java


set -Ux EDITOR emacsclient -t
# update the path
# set PATH /usr/local/go/bin $PATH
# set PATH $GOPATH/bin $PATH
# set PATH $FZFPATH $PATH
# set PATH /home/lach/.npm-global/bin $PATH

fish_add_path $FZFPATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path /opt/homebrew/opt/node@16/bin

source $WORK/doccla.fish
