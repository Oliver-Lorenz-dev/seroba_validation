#!/bin/bash

unzip 06B-I/test_data.zip > /dev/null

bash 06B-I/validate_06B-I.sh || exit 1

rm -r test_data