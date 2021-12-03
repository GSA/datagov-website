#!/bin/bash
# Wrapper to provide an .htmlproofer-ignore for htmlproofer linting

set -o errexit
set -o pipefail
set -o nounset

# - read .htmlproofer-ignore
# - strip comments starting with "#"
# - strip trailing spaces
# - delete blank lines
# - concatenates each line into a comma-separated list (no spaces) for --file-ignore
# This was written to be BSD + GNU sed compatible
file_ignore=$(sed -E -e 's/#.*//' -e 's/\s\+$//' -e '/^\s*$/ d' .htmlproofer-ignore | paste -s -d , - )

# Do a more thorough check on "good" files
#bundle exec htmlproofer --check-html --disable-external --file-ignore "${file_ignore}" _site

# Just make sure legacy files have consistent internal links
bundle exec htmlproofer --checks-to-ignore ScriptCheck,ImageCheck --allow-hash-href --disable-external _site
