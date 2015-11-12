export ZDOTDIR=$HOME/.dotfiles/d_zsh/d_zdot

export ZSH_CUSTOM=$HOME/.dotfiles/d_zsh/oh-my-zsh.custom

export TERM="xterm-256color"

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


# boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1



# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
