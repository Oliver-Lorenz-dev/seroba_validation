#!/bin/bash

unzip 06A-VI/test_data.zip > /dev/null

bash 06A-VI/validate_06A-VI.sh || exit 1

rm -r test_data