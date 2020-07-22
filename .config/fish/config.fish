# use rg in fzf
set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

set -x WORK ~/src

set -Ux EDITOR emacsclient -t
# update the path
set PATH /home/lach/.npm-global/bin $PATH



