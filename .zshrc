# PATH
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"

# Python
alias python=python3

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 21 2>/dev/null)
java21() { export JAVA_HOME=$(/usr/libexec/java_home -v 21); }
java25() { export JAVA_HOME=$(/usr/libexec/java_home -v 25); }

# Dev tools
eval "$(mise activate zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
