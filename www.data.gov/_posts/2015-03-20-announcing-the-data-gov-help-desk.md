---
acf: []
author: admin
categories:
- meta
comment_status: open
date: '2015-03-20T18:47:23'
date_gmt: '2015-03-20T22:47:23'
excerpt: '<p>Data.gov launches a new data driven customer service platform to request
  data and report problems or improvements with existing data. New tools are making
  it easier to submit complaints, comments, and petitions to your government online
  and through mobile applications. &hellip; <a aria-describedby="post-title-16914492"
  href="https://www.data.gov/meta/announcing-data-gov-help-desk/">Continued</a></p>

  '
featured_media: 0
format: standard
guid: http://www.data.gov/?p=16914492
id: 16914492
link: https://www.data.gov/meta/announcing-data-gov-help-desk/
meta: []
modified: '2015-04-06T22:02:40'
modified_gmt: '2015-04-07T02:02:40'
permalink: /meta/announcing-data-gov-help-desk/
ping_status: open
redirect_from: []
slug: announcing-data-gov-help-desk
status: publish
sticky: false
tags: []
template: ''
title: Announcing the Data.gov Help Desk
type: post
---
**Data.gov launches a new data driven customer service platform to request data and report problems or improvements with existing data.** 


New tools are making it easier to submit complaints, comments, and petitions to your government online and through mobile applications. Data.gov is proud to announce the launch of the Data.gov Help Desk, a new customer service platform powered by Open311 that will let the public submit [issues](/issue/), [improvements](/issue/), and [requests](/request/) for government data. You’ll now find these options on our [Contact page](https://www.data.gov/contact), but soon they will be integrated throughout the site. This is an open, API-driven platform for the public to voice their needs and track the status of data issues. This initial release is just the beginning, but we look forward to hearing your feedback here and on [GitHub](https://github.com/GSA/data.gov/issues/422) to make the Help Desk feature even better. 


[![datagov-data-request-form](https://s3.amazonaws.com/bsp-ocsit-prod-east-appdata/datagov/wordpress/2015/03/datagov-data-request-form-1024x883.png)](/request/)[![datagov-data-requests](https://s3.amazonaws.com/bsp-ocsit-prod-east-appdata/datagov/wordpress/2015/03/datagov-data-requests-1024x883.png)](/requests/)


### Background


Since the beginning, Data.gov has striven to engage with the public to help software developers, researchers, and other data users find and understand the data they need. Because Data.gov is a small team, we can’t always answer questions as quickly as we would like to. Additionally, these questions are often best answered by specific government agencies and domain experts. A few years ago, we helped establish the [Open Data Stack Exchange](http://opendata.stackexchange.com/) as a community-run resource for questions and answers about all kinds of open data, not even just government data. The Open Data Stack Exchange is a great resource which we continue to support, but there are many instances when it would be better to integrate these interactions more tightly with data publishers and specific datasets. For example, when someone is looking for a specific government dataset or wants to report a problem or suggest an improvement with an existing dataset, we’d like to make sure that the request makes it to the right agency and that data issues and improvements are tied to their dataset listings on Data.gov.


As part of the [Federal Open Data Policy](https://project-open-data.cio.gov/policy-memo/#c-create-a-process-to-engage-with-customers-to-help-facilitate-and-prioritize-data-release), agencies have been asked to provide a feedback mechanism to engage with their users and prioritize datasets for release. While some agencies like the [U.S. Census](https://ask.census.gov/newrequest.php) have well established platforms for engaging with their users, many agencies have been limited in providing more than a basic contact form to facilitate feedback. Similarly, Data.gov hasn’t had a sophisticated process for responding to data inquiries. In the past year, Data.gov has made heavy use of [GitHub issues](https://github.com/GSA/data.gov/issues) for publicly tracking problems and feature requests for the Data.gov website and occasionally data-specific issues come through as well, but we’ve been in need of a separate process oriented around data to properly delegate to the right folks in government. 


### Open Feedback for Open Data


Fortunately, there’s already a great model for managing citizen requests in a simple way across the complexity of government. The model of a consolidated contact center and the [311 phone number](http://en.wikipedia.org/wiki/3-1-1) in many cities has had a significant impact on the ability for people to request services and information from their government and track the progress of their request. More recently the [Open311](http://wiki.open311.org/GeoReport_v2/) specification has made those interactions into more of a public forum and standardized the process with a common API that can be used across many different applications and governments. To date, Open311 has mostly been limited to local government, but the [White House](https://www.whitehouse.gov/blog/2010/03/03/open-311) has taken note in the past. 


Since the Open311 standard already provides the foundation for a common data driven customer service platform, the Data.gov Help Desk has been built on top of it.


### Open for Integration


Working with the Open311 standard has meant that the the Data.gov Help Desk has taken an API-first approach which means that all of our tools have been developed around the same API that’s available to outside developers (also known as “[dogfooding](http://en.wikipedia.org/wiki/Eating_your_own_dog_food)”). In the near future we will make this API available to a wider audience outside of government, following the same precedent as the [White House We The People Petitions API](https://www.whitehouse.gov/blog/2014/10/23/new-we-people-write-api-and-what-it-means-you), but we will also be working closely with agencies across government so that we can use standardized APIs to integrate with their own customer service platforms and build on top of initiatives like [Demand Driven Open Data from HHS](http://www.hhs.gov/idealab/2015/03/16/identifying-harnessing-demand-drive-open-data/). Hopefully we can establish a precedent for a federated standardized API across government in much the same way the [Project Open Data schema](https://project-open-data.cio.gov/v1.1/schema/) has standardized metadata across both Federal agencies and local governments. 


This initial release of the Help Desk is just a starting point and there will be many opportunities to integrate it across Data.gov and expand its functionality. The most immediate next step will be to incorporate a Help Desk button and list existing issues around a dataset directly on the dataset page. That integration will come very soon. We’re also excited about the potential for using this along with more unstructured conversations such as those using tools like [Discourse](http://blog.pediacities.com/2015/02/talk-is-not-cheap/). 


The Data.gov Help Desk is being developed in the open on Github. The primary place where you can provide feedback on the feature is [issue #422](https://github.com/GSA/data.gov/issues/422) in the main Data.gov repository, but other components have their own repositories: [Open311 Simple CRM](https://github.com/GSA/open311-simple-crm), [and Open311-WP](https://github.com/GSA/wp-open311). With the [GitHub Open311 Adapter](https://github.com/GSA/open311-github), we’re also looking at the possibility of using GitHub Issues itself as a backend that can be served with this same API standard. We’re excited to build this not just as a platform, but as part of a broader ecosystem for engagement around data. We look forward to your participation. 


