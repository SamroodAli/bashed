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
