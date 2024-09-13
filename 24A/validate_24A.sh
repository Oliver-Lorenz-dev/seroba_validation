#!/bin/bash

check_key_genes () {
    genes="rbsF"
    lane=$1

    for gene in ${genes}
    do
        echo ${lane}

        match=$(grep -c ${gene} test_data/${lane}_cps.gff3)

        if [[ ${match} -eq 1 ]]
        then
            echo -e "${gene} present in ${lane}, test failed!" && exit 1
        else
            echo -e "Test passed for ${lane} - rbsF not present"
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


