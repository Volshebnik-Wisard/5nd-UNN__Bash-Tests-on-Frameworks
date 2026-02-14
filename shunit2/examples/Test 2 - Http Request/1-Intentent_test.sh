#! /bin/sh
# file: examples/party_test.sh
#
# This test is mostly for fun. Technically, it is a bad example of a unit test
# because of the temporal requirement, namely that the year be 1999. A better
# test would have been to pass in both a known-bad and known-good year into a
# function, and test for the expected result.

URL="https://www.google.com"
URL="https://google.com"
status_code=$(curl --write-out %{http_code} --silent --output /dev/null $URL)
echo "$status_code"

test_HTTP_0xx() {
    assertNotEquals "000" "${status_code}"
}

test_HTTP_1xx() {
    assertNotEquals "100" "${status_code}"
}

test_HTTP_2xx() {
    assertEquals "200" "${status_code}"
}

test_HTTP_3xx() {
    assertNotEquals "300" "${status_code}"
}

test_HTTP_4xx() {
    assertNotEquals "400" "${status_code}"
}

test_HTTP_5xx() {
    assertNotEquals "500" "${status_code}"
}



# Load and run shUnit2.
. ../shunit2
