#!/bin/bash

check_key_genes () {
    lane=$1

    whaF_match=$(grep -c -f test_data/whaF.fa test_data/${lane}_cps.fa)
    wciG_match=$(grep -c -f test_data/wciG.fa test_data/${lane}_cps.fa)

    if [[ ${whaF_match} -ne 1 ]]
    then
        echo -e "whaF not present in ${lane}, test failed!" && exit 1
    elif [[ ${wciG_match} -eq 1 ]]
    then
        echo -e "wciG present in ${lane}, test failed!" && exit 1
    else
        echo "Test passed for ${lane} - whaF present and wciG not present"
    fi
}

test_serotype () {
    while read line
    do
        check_key_genes ${line}
    done < $1

}

run_tests () {
    test_serotype $1
}

run_tests test_data/lanes.txt


