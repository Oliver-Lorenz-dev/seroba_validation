#!/bin/bash

unzip 20B/test_data.zip > /dev/null

bash 20B/validate_20B.sh || exit 1

rm -r test_data