.PHONY: all build

all: crawl convert

build:
	npm run build:jekyll

# convert corrects links that were not converted correctly
convert: 
	./convert.sh

# warning: can take a lot of time as it triggers new crawl and will likely get your IP rate limited unless whitelisted
# explanation doc: crawl.md#2-crawl
crawl: 
	wget -e robots=off -U mozilla --recursive --page-requisites --adjust-extension --domains www.data.gov,data.gov --no-parent --level=inf --convert-links --restrict-file-names=windows www.data.gov

# run jekyll and serve locallally at http://127.0.0.1:4000/
run:
	bundle install
	bundle exec jekyll serve --verbose

# run raw http server at http://localhost:8000/
run-local-server:
	python3 -m http.server --directory www.data.gov
