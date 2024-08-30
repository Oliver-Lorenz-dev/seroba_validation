#!/bin/bash

unzip 19A-II/test_data.zip > /dev/null

bash 19A-II/validate_19A-II.sh || exit 1

rm -r test_data