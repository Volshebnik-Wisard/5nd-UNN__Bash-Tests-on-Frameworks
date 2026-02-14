#!/bin/bash

set -e

URL="https://www.google.com"
URL="https://google.com"
status_code=$(curl --write-out %{http_code} --silent --output /dev/null $URL)
echo "$status_code"

. assert.sh
assert "echo $status_code" "301"                   # output expected

assert_end demo

