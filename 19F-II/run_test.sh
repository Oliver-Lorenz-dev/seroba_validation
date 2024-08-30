#!/bin/bash

unzip 19F-II/test_data.zip > /dev/null

bash 19F-II/validate_19F-II.sh || exit 1

rm -r test_data