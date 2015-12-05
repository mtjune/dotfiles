
## add extend path

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


export PATH=/usr/local/bin:$PATH
export PATH=/Library/TeX/texbin:$PATH

# anyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"


# brew-Cask
HOMEBREW_CASK_OPTS="--appdir=/Applications"
