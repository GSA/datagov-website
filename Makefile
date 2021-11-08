.PHONY: all crawl

all: crawl

# warning: can take a lot of time as it triggers new crawl
# explanation at https://github.com/GSA/datagov-wp-boilerplate/blob/main/crawl.md#2-crawl
crawl: 
	wget -e robots=off -U mozilla --recursive --page-requisites --html-extension --domains www.data.gov,data.gov --no-parent --level=inf --convert-links --restrict-file-names=windows www.data.gov

# runs at http://localhost:8000/
run-local-server:
	python3 -m http.server --directory www.data.gov