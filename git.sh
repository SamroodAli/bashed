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

# Set default for new terminal sessions, deleting any old value
feat="Feat"
set current feat
function feat(){
  feat=${1^}
  echo  "Set feature: $feat"
}
# View current feature
alias feat?='echo $feat'

# Commit with beautiful messages with feature headings prepended
function gim(){
  local message=${@:2}
  case $1 in
    "a")  gia "Asset:${message^}" ;;
    "x")  gia "Fix:${message^}" ;;
    "d")  gia "Docs:${message^}" ;;
    "s")  gia "Style:${message^}" ;;
    "r")  gia "Refactor:${message^}" ;;
    "t")  gia "Test:${message^}" ;;
    "c")  gia "Config:${message^}" ;;
    "i")  gia "Init:${message^}" ;;
    "o")  local message=${@:3};gia "${2^}:${message^}";;
    "M")  gia "Model:${message^}" ;;
    "V")  gia "View:${message^}" ;;
    "C")  gia "Controller:${message^}" ;;
    "f")  feat $2;
          message=${@:3}
          gia "$feat:${message^}";;
      *)  message=$@;gia "${feat}:${message^}";;
  esac
} 
