#!/bin/bash

unzip 06B-II/test_data.zip > /dev/null

bash 06B-II/validate_06B-II.sh || exit 1

rm -r test_data