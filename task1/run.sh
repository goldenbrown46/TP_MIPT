#!/bin/bash

while [[ $# -gt 0 ]]
do
    if [[ "$1" == "--extension" ]]
    then
        ex=$2
        shift 2
    fi

    if [[ "$1" == "--input_folder" ]]
    then
        inf=$2
        shift 2
    fi

    if [[ "$1" == "--backup_folder" ]]
    then
        bf=$2
        shift 2
    fi

    if [[ "$1" == "--backup_archive_name" ]]
    then
        ba=$2
        shift 2
    fi
done

mkdir $bf
find $inf -type f -name "*.$ex" -exec cp --backup=numbered {} $bf \;
tar -zcf $ba $bf

echo "done"


