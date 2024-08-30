#!/bin/bash

unzip 06A-IV/test_data.zip > /dev/null

bash 06A-IV/validate_06A-IV.sh || exit 1

rm -r test_data