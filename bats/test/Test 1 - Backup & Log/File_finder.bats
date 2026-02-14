#!/usr/bin/env bats

@test "test_logger.sh" {
  ./Logger.sh
 }

@test "test_log" {
  run find "./log_$(date +%Y-%m-%d).out"
  [ $status -eq 0 ]
 }

@test "test_backup" {
  run find "./backup_$(date +%Y-%m-%d).tgz"
  [ $status -eq 0 ]
}
