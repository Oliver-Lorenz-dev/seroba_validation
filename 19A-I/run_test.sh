#!/bin/bash

unzip 19A-I/test_data.zip > /dev/null

bash 19A-I/validate_19A-I.sh || exit 1

rm -r test_data