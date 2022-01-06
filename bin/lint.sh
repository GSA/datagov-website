#!/bin/bash
# Wrapper to provide an .htmlproofer-ignore for htmlproofer linting

# - read .htmlproofer-ignore
# - strip comments starting with "#"
# - strip trailing spaces
# - delete blank lines
# - concatenates each line into a comma-separated list (no spaces) for --file-ignore
# This was written to be BSD + GNU sed compatible
file_ignore=$(sed -E -e 's/#.*//' -e 's/\s\+$//' -e '/^\s*$/ d' .htmlproofer-ignore | paste -s -d , - )

exec bundle exec htmlproofer --disable-external --file-ignore "${file_ignore}" _site
