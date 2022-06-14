#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"

cd ${CUR_DIR}

NEOVIM=$(nvim --version | head -n 1)
TMUX=$(tmux -V)
ALACRITTY=$(alacritty --version)
FISH=$(fish --version)
RANGER=$(ranger --version | head -n 1)
STARSHIP=$(starship --version | head -n 1)

VERSIONS="\
$NEOVIM\n\
$TMUX\n\
$ALACRITTY\n\
$FISH\n\
$RANGER\n\
$STARSHIP\n\
"

echo $VERSIONS
