#!/bin/bash

unzip 06A-V/test_data.zip > /dev/null

bash 06A-V/validate_06A-V.sh || exit 1

rm -r test_data