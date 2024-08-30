#!/bin/bash

unzip 20C/test_data.zip > /dev/null

bash 20C/validate_20C.sh || exit 1

rm -r test_data