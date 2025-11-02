alias .. = cd ..
alias ... = cd ../..
alias .... = cd ../../..
alias v = nvim
alias vi = nvim

# Zellij aliases
alias z = zellij
alias zide = zellij --layout ide
alias zcompact = zellij --layout compact

zoxide init nushell | save -f ~/.zoxide.nu
source ~/.zoxide.nu

# Starship prompt
source ~/.cache/starship/init.nu

# Auto-start zellij
if (which zellij | is-not-empty) {
    if ($env.ZELLIJ? | is-empty) {
        zellij
    }
}
