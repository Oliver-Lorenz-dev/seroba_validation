#!/bin/bash

unzip 36A/test_data.zip > /dev/null

bash 36A/validate_36A.sh || exit 1

rm -r test_data