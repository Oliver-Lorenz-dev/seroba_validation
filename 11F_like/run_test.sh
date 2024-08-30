#!/bin/bash

unzip 11F_like/test_data.zip > /dev/null

bash 11F_like/validate_11F_like.sh || exit 1

rm -r test_data