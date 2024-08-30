#!/bin/bash

unzip 15D/test_data.zip > /dev/null

bash 15D/validate_15D.sh || exit 1

rm -r test_data