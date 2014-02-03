_handle_services() {
  [ ! -f .services ] && return

  action=$1
  services=$(sed 's/#.*//;/^\s*$/d' < .services)

  while read service; do
    brew services list | grep "$service" | grep "started" > /dev/null

    if [[ $? != 0 ]]; then
      brew services $action "$service" > /dev/null
    fi
  done < <(echo "$services")
}

start_services() {
  _handle_services "start"
}

stop_services() {
  _handle_services "stop"
}
