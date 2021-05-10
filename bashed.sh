# Takes all bash scripts and creates a final single bashscript file
function build(){
  rm bashed.sh
  for file in *; do
   if [[ $file == *.sh  ]] 
   then
    cat $file >> bashed.sh
   fi
  done
}
alias browser="sensible-browser"
# reload bashrcs file, no need to quit terminal
function reload(){
  source ~/.bashrc
}

#back up bashrc file
function bashed(){
  # local current_path=$(pwd); optional if u wanna save bashrc to github
  rm ~/bashrc/.bashrc;
  cp ~/.bashrc ~/bashrc/;
  #optional if u wanna save bashrc to github:
  # cd ~/bashrc/;
  # gim f $1 ${@:2};
  # git push -uf;
  # unset feat;
  # cd $current_path;
}
#open default browser
function browser(){
  sensible-browser $@
}


# kill all processes listening at a port
function kill-port(){
  kill -9 $(lsof -t -i:$1) 
}

#open localhost in browser with default port set as 3000
default_port=3000
function port(){
  if [ -z "$1" ]; then
    sensible-browser http://192.168.100.175:$default_port
  else
    sensible-browser http://192.168.100.175:$1
  fi
}
#mkdir a folder and cd into it
function cdi() {
    mkdir $1
    cd $1
}

# cd back, optional argument :cd back number of times
function cdb() {
  path=''
  for i in $(eval echo {1..$1})
    do 
      path+='../'
    done
  cd $path
}

#function to go the source of a program, goto node will take you where nodejs is installed, goto code for vs code  etc
function goto(){
  cd $(dirname $(which $1));
}
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
# rails routes with filter using grep,exg routes user
function routes(){
  rails routes | grep "$1"
}
