---
acf: []
author: admin
categories:
- developers
comment_status: open
date: '2014-01-10T18:17:34'
date_gmt: '2014-01-10T23:17:34'
excerpt: '<p>Data.gov is organized around metadata published by government offices.
  This metadata is harvested from external websites and aggregated on Data.gov so
  that it&#8217;s easier to browse and search. However, some applications may want
  to consume this metadata programatically and there &hellip; <a aria-describedby="post-title-132651"
  href="https://www.data.gov/developers/harvesting">Continued</a></p>

  '
featured_media: 0
guid: http://www.data.gov/?page_id=132651
id: 132651
layout: legacy-page
link: https://www.data.gov/developers/harvesting
meta: []
modified: '2020-01-24T16:04:59'
modified_gmt: '2020-01-24T21:04:59'
permalink: /developers/harvesting/
ping_status: open
redirect_from: []
slug: data-harvesting
status: publish
template: ''
title: Data Harvesting
type: page
---
Data.gov is organized around metadata published by government offices. This metadata is harvested from external websites and aggregated on Data.gov so that it’s easier to browse and search. However, some applications may want to consume this metadata programatically and there are two ways of doing this explained below.


**Disclaimer:** *Data.gov also syndicates data from state and local governments. However, non-federal data sources are governed by different terms of service and often different licenses than Federal data. When using or harvesting data from Data.gov, please note this distinction. When harvesting large volumes of data or metadata through Data.gov, we recommend you [filter](https://github.com/GSA/data.gov/issues/315#issuecomment-275747388) for Federal sources and separate non-federal sources to avoid comingling metadata without making this distinction.*
### Option 1: Harvest Aggregate Metadata


The simplest option is to access metadata in aggregate as it exists on catalog.data.gov. This can be done via our [CKAN API](https://www.data.gov/developers/apis "APIs") or our [CSW endpoint](https://catalog.data.gov/csw). We do not currently provide a single aggregate file of all metadata, but we hope to provide this in the future. Until then, you can follow this [GitHub issue](https://github.com/GSA/data.gov/issues/315#issuecomment-275747388) for instructions on using the CKAN API to crawl or filter metadata.


### Option 2: Harvest From Upstream Harvest Sources


Another option is to go directly to the metadata source. Every harvested source of metadata is listed at <https://catalog.data.gov/harvest> and via our [CKAN API](https://www.data.gov/developers/apis) using this [filter](https://catalog.data.gov/api/3/action/package_search?q=type:harvest). As part of [Project Open Data](https://project-open-data.cio.gov) most government offices have transitioned to make all of their metadata available via a [standard schema](https://project-open-data.cio.gov/v1.1/schema/) packaged as a data.json file. These are treated just as any other harvest source and you can use the CKAN API to [filter](https://catalog.data.gov/api/3/action/package_search?q=type%3Aharvest+AND+source_type%3Adatajson) for only these harvest sources.


