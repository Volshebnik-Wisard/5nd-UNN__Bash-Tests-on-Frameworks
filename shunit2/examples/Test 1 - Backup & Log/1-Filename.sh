#! /bin/sh
# file: examples/math_test.sh

./Logger.sh
test_log() {
  filename="$(find "./log_$(date +%Y-%m-%d).out")"
  assertEquals "./log_$(date +%Y-%m-%d).out" "${filename}"
}

test_backup() {
  filename="$(find "./backup_$(date +%Y-%m-%d).tgz")"
  assertEquals "./backup_$(date +%Y-%m-%d).tgz" "${filename}"
}


# Load and run shUnit2.
. ../shunit2
