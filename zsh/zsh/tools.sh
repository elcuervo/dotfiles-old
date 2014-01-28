start_services() {
  services=$(sed 's/#.*//;/^\s*$/d' < .services)

  while read service; do
    brew services list | grep "$service" | grep "started" > /dev/null

    if [[ $? != 0 ]]; then
      brew services start "$service" > /dev/null
    fi
  done < <(echo "$services")
}
