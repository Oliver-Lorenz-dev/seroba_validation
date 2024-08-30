#!/bin/bash

unzip 33H/test_data.zip > /dev/null

bash 33H/validate_33H.sh || exit 1

rm -r test_data