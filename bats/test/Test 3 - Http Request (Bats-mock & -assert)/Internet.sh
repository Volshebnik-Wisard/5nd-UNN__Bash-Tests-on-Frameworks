#!/usr/bin/bash
#sudo apt install curl

#URL="https://www.google.com" #200
#URL="https://google.com" #301
URL="https://aff3ct.readthedocs.io/qwerty" #404

status_code=$(curl --write-out %{http_code} --silent --output /dev/null $URL)
echo $status_code

