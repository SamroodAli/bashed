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
