# Takes all bash scripts and creates a final single bashscript file
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
