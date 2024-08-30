#!/bin/bash

unzip 19F-IV/test_data.zip > /dev/null

bash 19F-IV/validate_19F-IV.sh || exit 1

rm -r test_data