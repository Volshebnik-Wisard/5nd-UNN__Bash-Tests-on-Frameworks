#!/bin/bash

set -e
./Logger.sh
. assert.sh
assert "find ./log_$(date +%Y-%m-%d).out"   "./log_$(date +%Y-%m-%d).out"
assert "find ./backup_$(date +%Y-%m-%d).tgz" "./backup_$(date +%Y-%m-%d).tgz"
assert_end demo
