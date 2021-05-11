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

#function to search with filter
function lg(){
  ls | grep "$@"
}
