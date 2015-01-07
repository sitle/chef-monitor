@test "Rabbitmq admin interface port is open (15672)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':15672' | wc -l"
  [ "$output" -eq 1 ]
}

@test "Rabbitmq SSL service port is open (5671)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':5671' | wc -l"
  [ "$output" -eq 1 ]
}

@test "Rabbitmq service port is open (5672)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':5672' | wc -l"
  [ "$output" -eq 1 ]
}

@test "Redis service port is open (6379)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':6379' | wc -l"
  [ "$output" -eq 2 ]
}

@test "Sensu API service port is open (4567)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':4567' | wc -l"
  [ "$output" -eq 1 ]
}

@test "Uchiwa dashboard service port is open (3000)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':3000' | wc -l"
  [ "$output" -eq 1 ]
}

@test "Uchiwa dashboard proxy service port is open (80)" {
  run bash -c "netstat -anpt | grep LISTEN | egrep ':80' | wc -l"
  [ "$output" -eq 1 ]
}