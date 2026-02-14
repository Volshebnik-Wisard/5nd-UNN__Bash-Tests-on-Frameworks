#!/usr/bin/bash
#sudo apt install curl

#URL="https://www.google.com"
#URL="https://google.com"
URL="https://aff3ct.readthedocs.io/qwerty"

status_code=$(curl --write-out %{http_code} --silent --output /dev/null $URL)
echo $status_code

