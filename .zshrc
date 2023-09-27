# PATH
PATH=$PATH:$HOME/.local/bin

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

eval "$(starship init zsh)"

# aliases
alias ls='exa'
alias grep="grep --color=always"

# exports
export LIBVA_DRIVER_NAME=nvidia
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export WLR_NO_HARDWARE_CURSORS=1
export QT_QPA_PLATFORMTHEME=qt5ct


# bun completions
[ -s "/home/wahid/.bun/_bun" ] && source "/home/wahid/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# opt/bin
export PATH="/opt/bin:$PATH"
export PATH=$PATH:/home/wahid/.spicetify
