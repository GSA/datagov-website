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

# rename files type <link rel="stylesheet" href="http://www.data.gov/chosen.min.css@ver=1.0.0">
echo Renaming files with @ver=x.x.x..
echo    Total files to rename:
find . -iname "*@ver=*" | wc -l 
find . -iname "*@ver=*" | 
    while read fname; do 
    echo "$fname --> ${fname%@*}"; 
    mv $fname ${fname%@*}; 
    done

# replace type:
# <link rel="stylesheet" href="wp/block-library/style.min.css@ver=5.5.6.css">
echo Converting ver=x.x.x.css hrefs...
find $DIR -type f -exec \
    $SED -E --in-place \
    's#(href=".*.css)(@ver=.*.css)#\1#gp' {} ';'

# replace type:
# <script type='text/javascript' src='http://www.data.gov/app/plugins/wp-open311/public/assets/js/chosen.jquery.min.js?ver=1.0.0'
echo Converting ver=x.x.x.js hrefs...
find $DIR -type f -exec \
    $SED -E --in-place \
    's#(src=.*.js)(.ver=.*.js)#\1#gp' {} ';'

# replace type:
# wp-emoji-release.min.js?ver=5.5.6
echo Converting wp-emoji-release.min.js?ver=x.x.x
find $DIR -type f -exec \
    $SED -E --in-place \
    's#(wp-emoji-release.min.js)(.ver=.....)#\1#gp' {} ';'

# replace type:
# ( 'fetch' in window ) || document.write( '<script src="wp/wp-includes/js/dist/vendor/wp-polyfill-fetch.min.js@ver=3.0.0"></scr' + 'ipt>' );( document.contains ) || document.write( '<script src="wp/wp-includes/js/dist/vendor/wp-polyfill-node-contains.min.js@ver=3.42.0"></scr' + 'ipt>' );( window.DOMRect ) || document.write( '<script src="wp/wp-includes/js/dist/vendor/wp-polyfill-dom-rect.min.js@ver=2.0.2"></scr' + 'ipt>' );
echo Converting wp-polyfill-fetch.min.js@ver=3.0.0\">\</scr\' + \'ipt>\'
find $DIR -type f -exec \
    $SED -E --in-place \
    's#(src=".*?.js)(.ver=.*?")#\1#gp' {} ';'

# replace type <a href="http://www.data.gov/energy-infrastructure"> 
echo Converting \<a\> hrefs...
find $DIR -type f -exec \
    $SED -E --in-place \
    's#href="https?://www.data.gov/#href="#g' {} ';'

# Final count, note that some (many?) of these might be legitimate
echo Total occurrences of 'www.data.gov'
grep -r $DIR -e 'www.data.gov' | wc -l
