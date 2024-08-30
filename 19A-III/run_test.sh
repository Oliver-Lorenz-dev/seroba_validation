#!/bin/bash

unzip 19A-III/test_data.zip > /dev/null

bash 19A-III/validate_19A-III.sh || exit 1

rm -r test_data