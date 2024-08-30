#!/bin/bash

unzip 06A-I/test_data.zip > /dev/null

bash 06A-I/validate_06A-I.sh || exit 1

rm -r test_data