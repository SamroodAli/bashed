#open default browser
function browser(){
  sensible-browser $@
}


# kill all processes listening at a port
function kill-port(){
  kill -9 $(lsof -t -i:$1) 
}


default_port=3000
function port(){
  if [ -z "$1" ]; then
    sensible-browser http://localhost:$default_port
  else
    sensible-browser http://localhost:$1
  fi
}
