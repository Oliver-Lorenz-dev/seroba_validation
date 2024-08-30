#!/bin/bash

check_key_genes () {
    genes="wzy wzd"
    lane=$1

    for gene in ${genes}
    do
        echo ${lane}

        match=$(grep -c -f test_data/${gene}.fa test_data/${lane}_cps.fa)

        if [[ ${match} -ne 1 ]]
        then
            echo -e "${gene} not present in ${lane}, test failed!" && exit 1
        else
            echo -e "Sample: ${lane} Gene: ${gene} Occurences: ${match}"
        fi

    done
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


