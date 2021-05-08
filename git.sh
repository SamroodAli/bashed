#repo , opens up current repository in your default browser
function repo() {
    local=$(git config --get remote.origin.url)
    sensible-browser $local || open $local || xdg-open $local
}
