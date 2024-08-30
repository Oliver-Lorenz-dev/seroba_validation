#!/bin/bash

unzip 33E/test_data.zip > /dev/null

bash 33E/validate_33E.sh || exit 1

rm -r test_data