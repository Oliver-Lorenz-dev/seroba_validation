#!/bin/bash

unzip 36B/test_data.zip > /dev/null

bash 36B/validate_36B.sh || exit 1

rm -r test_data