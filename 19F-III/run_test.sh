#!/bin/bash

unzip 19F-III/test_data.zip > /dev/null

bash 19F-III/validate_19F-III.sh || exit 1

rm -r test_data