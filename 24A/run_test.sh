#!/bin/bash

unzip 24A/test_data.zip > /dev/null

bash 24A/validate_24A.sh || exit 1

rm -r test_data