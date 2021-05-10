# Takes all bash scripts and creates a final production ready bashscript file
function build(){
  rm bashed.sh
  for file in *; do
   if [[ $file == *.sh  ]] 
   then
    cat $(basename $file) >> bashed.sh
    cat $file >> bashed.sh
   fi
  done
}

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

function bashrc(){
  sensible-editor ~/.bashrc
}
