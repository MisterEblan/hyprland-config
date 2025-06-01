if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end
alias vpn="sudo openvpn --config ~/openvpn_config/amnezia --daemon"
set -gx PATH $HOME/.local/bin $PATH

# pyenv config for fish
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH

# инициализация
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
