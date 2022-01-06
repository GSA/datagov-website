#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# match all recursive regex matches and loop
#rg $regex $SCRIPT_DIR | while read -r match_file_name match_string ; do
rg "<script .*? src='htt.*?.js'" www.data.gov/ | while read -r match ; do
    echo "match at $match"

    match_file_name="$( cut -d ':' -f 1 <<< "$match" )"
    echo "match_file_name $match_file_name"
    match_string="$( cut -d ':' -f 2- <<< "$match" )"
    echo "match_string $match_string"

    CDN_FILE_URL=$( echo $match_string | rg -o "http.*?js" )
    echo "CDN_FILE_URL $CDN_FILE_URL"
    wget --no-verbose $CDN_FILE_URL

    HASH=$(openssl dgst -sha384 -binary $CDN_FILE | openssl base64 -A)
    echo "HASH $HASH"

    regex="(<script .*? src='htt.*?.js')"
    # todo add hash
    # integrety="$HASH"
    gsed --in-place --regexp-extended "s#$regex#\1 integrety=\"$HASH\"#g" $match_file_name
    # todo add crossorigin="anonymous"
    gsed --regexp-extended --in-place "s#$regex#\1 crossorigin=\"anonymous\"#g" $match_file_name

    echo "rm $(basename $CDN_FILE_URL)"
    rm $(basename $CDN_FILE_URL)
done
