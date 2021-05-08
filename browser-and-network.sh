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
