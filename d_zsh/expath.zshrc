
## add extend path

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
