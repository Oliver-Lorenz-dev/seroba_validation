#!/bin/bash

check_gene () {
    gene=$1
    lane=$2
    # check gene is in ARIBA report
    ariba_match=$(grep -m1 -w -c ${gene} test_data/${lane}_ariba_report.tsv)
    
    if [ "$ariba_match" -ne 1 ]
    then
        echo "${gene} not found in ARIBA report for ${lane}, test failed!"; exit 1
    fi
}

while read lane
do
    check_gene "rmlA_5" ${lane}

    check_gene "wzg_06BII" ${lane}

    check_gene "rmlB_3" ${lane}

    echo "Test passed for ${lane} - rmlA_5, rmlB_3 and wzg_06BII present"
    echo
done < test_data/lanes.txt

