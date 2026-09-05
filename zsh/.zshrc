# PATH
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"

# Python
alias python=python3

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 21 2>/dev/null)

java21() {
  export JAVA_HOME=$(/usr/libexec/java_home -v 21)
}

java25() {
  export JAVA_HOME=$(/usr/libexec/java_home -v 25)
}

# Dev tools
eval "$(mise activate zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# fzf
[ -f "$(brew --prefix fzf)/shell/key-bindings.zsh" ] && \
  source "$(brew --prefix fzf)/shell/key-bindings.zsh"

[ -f "$(brew --prefix fzf)/shell/completion.zsh" ] && \
  source "$(brew --prefix fzf)/shell/completion.zsh"

echo "\n👋 Good $(date +%p | grep -q AM && echo 'morning' || echo 'afternoon'), $(whoami). [$(date +'%H:%M')]"
