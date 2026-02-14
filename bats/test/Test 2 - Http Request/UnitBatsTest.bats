#!/usr/bin/env bats

function setup ()
{
   echo "${output}"
}

@test "HTTP status code 0xx - Offline" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  [ "${output:0:1}" != "0" ]
}

@test "HTTP status code 1xx - Informational" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  [ "${output:0:1}" != "1" ]
}

@test "HTTP status code 2xx - Success" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  [ "${output:0:1}" = "2" ]
   
}

@test "HTTP status code 3xx - Redirection" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  [ "${output:0:1}" != "3" ]
 
}

@test "HTTP status code 4xx - Client Error" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  [ "${output:0:1}" != "4" ]
}

@test "HTTP status code 5xx - Server Error" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  [ "${output:0:1}" != "5" ]
}

