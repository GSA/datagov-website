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

A tiny nginx application that redirects URLs from our subdomains to data.gov.


### Services

These services are required for www-redirects.

Service | Type | Plan | Description
------- | ---- | ---- | -----------
www-redirects-domains | external-domain | domain | Routes \*.data.gov domains to the application 


#### External domain service

The [external domain service](https://cloud.gov/docs/services/external-domain-service/) provides the domain routes and TLS for \*.data.gov. 

    $ cf create-service external-domain domain www-redirects-domains -c '{"domains": "agriculture.data.gov,climate.data.gov,developer.data.gov,energy.data.gov,food.data.gov,highlights.data.gov,labs.data.gov,ocean.data.gov,www.data.gov"}'
    
To work around [gsa/datagov-deploy#3573](https://github.com/GSA/datagov-deploy/issues/3573), we need to create the domains individually.

    $ cf create-private-domain gsa-datagov agriculture.data.gov
    $ cf create-private-domain gsa-datagov climate.data.gov
    $ cf create-private-domain gsa-datagov developer.data.gov
    $ cf create-private-domain gsa-datagov energy.data.gov
    $ cf create-private-domain gsa-datagov food.data.gov
    $ cf create-private-domain gsa-datagov highlights.data.gov
    $ cf create-private-domain gsa-datagov labs.data.gov
    $ cf create-private-domain gsa-datagov ocean.data.gov
    $ cf create-private-domain gsa-datagov www.data.gov

Create routes for each domain. Note that when [gsa/datagov-deploy#3573](https://github.com/GSA/datagov-deploy/issues/3573) is resolved, the map route command becomes `cf map-route www-redirects data.gov --hostname agriculture`.

    $ cf map-route www-redirects agriculture.data.gov
    $ cf map-route www-redirects climate.data.gov
    $ cf map-route www-redirects developer.data.gov
    $ cf map-route www-redirects energy.data.gov
    $ cf map-route www-redirects food.data.gov
    $ cf map-route www-redirects highlights.data.gov
    $ cf map-route www-redirects labs.data.gov
    $ cf map-route www-redirects ocean.data.gov
    $ cf map-route www-redirects www.data.gov


### Continuous Delivery

The www-redirects application is automatically deployed from CI. Make sure to
create deployer secrets.

Secret | Description | Where to find?
------ | ----------- | --------------
CF_SERVICE_USER | The deployer username. | cf service-key
CF_SERVICE_AUTH | The deployer password. | cf service-key


