#!/bin/bash

check_key_genes () {
    genes="gct wcrL wcwC"
    lane=$1

    for gene in ${genes}
    do
        echo ${lane}
        gene_id=$(echo ${gene} | awk -F "_" '{ print $1 }')
        match=$(grep -c -f test_data/${gene}.fa test_data/${lane}_cps.fa)

        if [[ ${match} -ne 1 ]]
        then
            echo "${gene} not found for ${lane}, test failed!"; exit 1
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


