# datagov-website

A static version of www.data.gov.

## Usage


## Development

### Requirements

- [Ruby](https://www.ruby-lang.org/en/) 2.7
- [Bundler](https://bundler.io/)
- Node.js


### Setup

Install the dependencies.

    $ npm run setup

Build the Jekyll site.

    $ npm run build:jekyll

Serve the site locally.

    $ npm start

Open your web browser to [localhost:4000](http://localhost:4000/).

Run some checks.

    $ npm run lint

## www-redirects

A tiny nginx application that redirects URLs from our subdomains to
www.data.gov.


### Services

These services are required.

    $ cf create-service external-domain domain www-redirects-domains -c '{"domains": "agriculture.data.gov,climate.data.gov,developer.data.gov,energy.data.gov,food.data.gov,highlights.data.gov,labs.data.gov,ocean.data.gov"}'


### Continuous Delivery

The www-redirects applicaiton is automatically deployed from CI. Make sure to
create deployer secrets.

Secret | Description | Where to find?
------ | ----------- | --------------
CF_SERVICE_USER | The deployer username. | cf service-key
CF_SERVICE_AUTH | The deployer password. | cf service-key


