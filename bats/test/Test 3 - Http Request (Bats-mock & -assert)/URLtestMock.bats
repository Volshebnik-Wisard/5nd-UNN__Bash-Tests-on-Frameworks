#!/usr/bin/env ./test/libs/bats/bin/bats


#load 'test_helper/bats-support/load'
#load 'test_helper/bats-assert/load'

load 'libs/bats-support/load'
load 'libs/bats-assert/load'
load mock_test_suite


@test "HTTP status code 0xx - Offline" {
  run bash Internet.sh
  if [ "${output:0:1}" = "0" ]; then
    [ "$status" -eq 0 ]
    [ "${output:0:1}" = "0" ]
  else
    mock_set_output "${mock}" "000"
    run "${mock}"
    [ "${lines[0]:0:1}" = "0" ]
  fi
}

@test "HTTP status code 1xx - Informational" {
  run bash Internet.sh
  if [ "${output:0:1}" = "1" ]; then
    [ "$status" -eq 0 ]
    [ "${output:0:1}" = "1" ]
  else
    mock_set_output "${mock}" "111"
    run "${mock}"
    [ "${lines[0]:0:1}" = "1" ]
  fi
}

@test "HTTP status code 2xx - Success" {
  run bash Internet.sh
  if [ "${output:0:1}" = "2" ]; then
    [ "$status" -eq 0 ]
    [ "${output:0:1}" = "2" ]
  else
    mock_set_output "${mock}" "300"
    run "${mock}"
    [ "${lines[0]:0:1}" = "3" ]
  fi
}

@test "HTTP status code 3xx - Redirection" {
    run bash Internet.sh
  if  [ "${output:0:1}" = "3" ]; then
    [ "$status" -eq 0 ]
    [ "${output:0:1}" = "3" ]
  else
    mock_set_output "${mock}" "300"
    run "${mock}"
    [ "${lines[0]:0:1}" = "3" ]
  fi
}

@test "HTTP status code 4xx - Client Error" {
  run bash Internet.sh
  if [ "${output:0:1}" = "4" ]; then
    [ "$status" -eq 0 ]
    [ "${output:0:1}" = "4" ]
  else
    mock_set_output "${mock}" "404"
    run "${mock}"
    [ "${lines[0]:0:1}" = "4" ]
  fi
}

@test "HTTP status code 5xx - Server Error" {
  run bash Internet.sh
  if [ "${output:0:1}" = "5" ]; then
    [ "$status" -eq 0 ]
    [ "${output:0:1}" = "5" ]
  else
    mock_set_output "${mock}" "501"
    run "${mock}"
    [ "${lines[0]:0:1}" = "5" ]
  fi
}

