#!/bin/bash

unzip 20A/test_data.zip > /dev/null

bash 20A/validate_20A.sh || exit 1

rm -r test_data