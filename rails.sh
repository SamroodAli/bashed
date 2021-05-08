# rails routes with filter using grep,exg routes user
function routes(){
  rails routes | grep "$1"
}
