#!/bin/bash
DIR=www.data.gov
#DIR=_test_garbage

# stupid mac stuff
SED=sed
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED=gsed
fi

# count www.data.gov references for baseline reference
echo Total occurrences of 'www.data.gov'
grep -r $DIR -e 'www.data.gov' | wc -l

# rename files type <link rel="stylesheet" href="http://www.data.gov/chosen.min.css?ver=1.0.0">
echo Renaming files with @ver=x.x.x..
echo    Total files to rename:
find . -iname "*@ver=*" | wc -l 
find . -iname "*@ver=*" | 
    while read fname; do 
    echo "$fname --> ${fname%@*}"; 
    mv $fname ${fname%@*}; 
    done

# replace type <link rel="stylesheet" href="http://www.data.gov/chosen.min.css?ver=1.0.0">

# replace type <script type='text/javascript' src='http://www.data.gov/app/plugins/wp-open311/public/assets/js/chosen.jquery.min.js?ver=1.0.0'


# replace type <a href="http://www.data.gov/energy-infrastructure"> 
echo Converting \<a\> hrefs...
find $DIR -type f -exec \
    $SED -E --in-place \
    's#href="https?://www.data.gov/#href="#g' {} ';'



# Final count, note that some (many?) of these might be legitimate
echo Total occurrences of 'www.data.gov'
grep -r $DIR -e 'www.data.gov' | wc -l