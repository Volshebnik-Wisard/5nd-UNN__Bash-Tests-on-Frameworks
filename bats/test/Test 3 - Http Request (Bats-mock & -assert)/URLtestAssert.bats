#!/usr/bin/env ./test/libs/bats/bin/bats


#load 'test_helper/bats-support/load'
#load 'test_helper/bats-assert/load'

load 'libs/bats-support/load'
load 'libs/bats-assert/load'
load mock_test_suite


@test "HTTP status code 0xx - Offline" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  refute ["HTTP: ${output:0:1}xx" = "HTTP: 0xx"]
}

@test "HTTP status code 1xx - Informational" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  refute ["HTTP: ${output:0:1}xx" = "HTTP: 1xx"]
}

@test "HTTP status code 2xx - Success" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  assert ["HTTP: ${output:0:1}xx" = "HTTP: 2xx"]
}

@test "HTTP status code 3xx - Redirection" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  refute ["HTTP: ${output:0:1}xx" = "HTTP: 3xx"]
}

@test "HTTP status code 4xx - Client Error" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  refute ["HTTP: ${output:0:1}xx" = "HTTP: 4xx"]
}

@test "HTTP status code 5xx - Server Error" {
  run bash Internet.sh
  [ "$status" -eq 0 ]
  refute ["HTTP: ${output:0:1}xx" = "HTTP: 5xx"]
}

