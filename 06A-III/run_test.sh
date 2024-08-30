#!/bin/bash

unzip 06A-III/test_data.zip > /dev/null

bash 06A-III/validate_06A-I.sh || exit 1

rm -r test_data