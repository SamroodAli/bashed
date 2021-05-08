# reload bashrcs file, no need to quit terminal
function reload(){
  source ~/.bashrc
}

#back up bashrc file
function bashed(){
  local current_path=$(pwd);
  rm ~/bashrc/.bashrc;
  cp ~/.bashrc ~/bashrc/;
}
