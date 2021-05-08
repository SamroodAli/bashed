# kill all processes listening at a port
function kill-port(){
  kill -9 $(lsof -t -i:$1) 
}
