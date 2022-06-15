set fish_greeting ""
fish_vi_key_bindings
source ~/.config/fish/alias.fish

# https://unix.stackexchange.com/questions/198794/where-does-the-term-environment-variable-default-get-set
# set -gx TERM screen-256color-bce

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# -----------------------------------Env Path-----------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
fish_add_path ~/Library/Android/sdk
fish_add_path ~/.local/bin
fish_add_path ~/go/bin

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ---------------------------------Env Variables--------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
set -gx GOPATH ~/go

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ----------------------------------Third Party---------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

## PatrickF1/fzf.fish
set fzf_preview_dir_cmd exa --all --color=always
set fzf_fd_opts --type=directory -H -d=3 --follow --exclude=.git --exclude=node_modules

## starship
starship init fish | source

