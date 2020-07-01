# use rg in fzf
set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

set -x WORK ~/src
# update the path
set PATH /home/lach/.npm-global/bin $PATH
# THEME PURE #
set fish_function_path /home/lach/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /home/lach/.config/fish/functions/theme-pure/conf.d/pure.fish
