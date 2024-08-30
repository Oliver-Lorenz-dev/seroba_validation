#!/bin/bash

unzip 06A-II/test_data.zip > /dev/null

bash 06A-II/validate_06A-II.sh || exit 1

rm -r test_data