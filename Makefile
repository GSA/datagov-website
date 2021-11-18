.PHONY: all 

all: crawl convert

# convert corrects links that were not converted correctly
convert: 
	./convert.sh

# warning: can take a lot of time as it triggers new crawl and will likely get your IP rate limited unless whitelisted
# explanation doc: crawl.md#2-crawl
crawl: 
	wget -e robots=off -U mozilla --recursive --page-requisites --adjust-extension --domains www.data.gov,data.gov --no-parent --level=inf --convert-links --restrict-file-names=windows www.data.gov

# runs at http://localhost:8000/
run-local-server:
	python3 -m http.server --directory www.data.gov
