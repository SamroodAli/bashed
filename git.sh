#repo , opens up current repository in your default browser
function repo() {
    local=$(git config --get remote.origin.url)
    sensible-browser $local || open $local || xdg-open $local
}

# git add and commit
function gia(){
  git add . #comment this line if you dont want to add all files
  git commit -m "${@}"
  echo $@
}
