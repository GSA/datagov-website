---
acf: []
author: admin
categories:
- ocean
comment_status: closed
date: '2012-11-30T17:11:36'
date_gmt: '2012-11-30T17:11:36'
excerpt: '<p>This section provides information on common mapping service and data
  encoding standards, data publishing considerations, and links to relevant data access
  and exchange ontologies and semantics. Common Mapping Standards Data Publishing
  Considerations Data Access and Exchange &nbsp; Common Mapping Standards &hellip;
  <a aria-describedby="post-title-40639" href="https://www.data.gov/ocean/ocean-data-publishing-and-exchange">Continued</a></p>

  '
featured_media: 0
guid: http://www.data.gov/?p=40639
id: 40639
layout: legacy-page
link: https://www.data.gov/ocean/ocean-data-publishing-and-exchange
meta: []
modified: '2014-04-21T16:52:36'
modified_gmt: '2014-04-21T20:52:36'
permalink: /ocean/ocean-data-publishing-and-exchange/
ping_status: open
redirect_from: []
slug: ocean__page__ocean-data-publishing-and-exchange
status: publish
template: ''
title: Ocean &#8211; Data Publishing and Exchange
type: page
---

This section provides information on common mapping service and data encoding standards, data publishing considerations, and links to relevant data access and exchange ontologies and semantics.



* [Common Mapping Standards](#tabs-1)
* [Data Publishing Considerations](#tabs-2)
* [Data Access and Exchange](#tabs-3)


 


  

  

Common Mapping Standards
------------------------


### Why Use Data Standards?


Benefits


* Encourage internal and external interoperability
* Data can be leveraged beyond the initial intent for creation
* Increase system transparency
* Reduces design and development time


Obstacles


* Many different kinds of standards
* Can often be complex to architect
* Initial learning curve to get started


Considerations


* Standards should match your system needs
* Publish what standards you are using
* Strive for consistency across enterprise/organization
* Stay up-to-date with the standards you are using


### Data Encoding


* [OGC Keyhole Markup Language (KML)](http://www.opengeospatial.org/standards/kml)
	+ [Schema](http://schemas.opengis.net/kml/)
* [OpenGIS Geography Markup Language (GML)](http://portal.opengeospatial.org/files/?artifact_id=26765)
	+ [Schema](http://schemas.opengis.net/gml/)
* [OpenLayers](http://openlayers.org)
* [OGC Network Common Data Form (NetCDF)](http://www.opengeospatial.org/standards/netcdf)


### Mapping Service Standards


* [Web Map Service (WMS)](http://www.opengeospatial.org/standards/wms)
	+ [Schema](http://schemas.opengis.net/wms/)
* [Web Feature Service (WFS)](http://www.opengeospatial.org/standards/wfs)
* [Web Coverage Service (WCS)](http://www.opengeospatial.org/standards/wcs)
	+ [Schema](http://schemas.opengis.net/wcs/)
* [Catalog Service for the Web (CSW)](http://www.opengeospatial.org/standards/specifications/catalog)
	+ [Best Practices](http://www.opengeospatial.org/standards/bp)


### Benefits and Limitations


* KML
	+ Useful for Google Maps and Google Earth as well as desktop GIS
	+ Limited to the number of geographic features
* WMS
	+ Useful for publishing a graphic map
	+ Does not contain any “real” data. Only a picture of the data.
* WFS
	+ Useful for sending data between system (GML encoding)
	+ With encoding, the size and complexity of the XML information is expanded
* CSW
	+ Useful for publishing a clearinghouse of metadata describing data and services your organization is offering
	+ While various metadata standards can be used in CSW, not all of these standards are the same.


### Standards Organizations and Resources


* [International Standards Organization (ISO)](http://www.iso.org/iso/home.html)
	+ [Standards](http://www.iso.org/iso/iso_catalogue.htm)
* [Federal Geographic Data Committee (FGDC)](http://www.fgdc.gov/)
	+ [Standards](http://www.fgdc.gov/standards)
* [World Wide Web Consortium (W3C)](http://www.w3.org)
	+ [Standards](http://www.w3.org/standards)
* [Open Geospatial Consortium](http://www.opengeospatial.org)
	+ [Standards](http://www.opengeospatial.org/standards)
* [Open Source Geospatial Foundation (OSGeo)](http://www.osgeo.org)
* [Internet Engineering Task Force (IETF)](http://www.ietf.org)




  

  

Data Publishing Considerations
------------------------------


A number of specific criteria and parameters should be considered before determining the type, format, and method for publishing your geospatial and non-geospatial data. These include:


### The “Client”


* Desktop / Thick Client Application
	+ Service can be more robust
	+ Easy to turn data layers on and off within a single service
	+ Can manipulate transparency of each layer
* Web Application / Thin Client
	+ Requires an optimized service
	+ User will be restricted to the functionality of the application


### The End User and Purpose


* Who is the intended user?
	+ How will they use the data?
	+ Are there specific tools or functionality this data service was created for?
	+ What questions will need to be answered by the data?
	+ What standards are expected within the data and service?
* Secondary End User
	+ Will external users want to utilize this service and build their own mashup application?
	+ What standards are expected within the data and service?


### End User Expectations


Users expect:


* Optimized services
* Cartographically rendered services
* High-quality data
* Well-maintained services
* Frequent or real-time updates




  

  

Data Access and Exchange
------------------------


### What is an Ontology?


An ontology is a representation of knowledge, generally of a particular subject (domain), written with a standardized, structured syntax. An ontology contains concepts (resources), which serve to characterize the domain.


Ontologies and Thesauri References


* [Marine Metadata Interoperability](http://marinemetadata.org/conventions/ontologies-thesauri)


### Coastal and Marine Spatial Planning Discovery Vocabularies Workshop


A Joint Woods Hole Oceanographic Institute/ USGS/ NOAA Workshop


* [Workshop Report (February 2011)](http://www.whoi.edu/sites/cmspworkshop/finalreport)


### Service Type


The type of service you create will depend largely on the type of server you have implemented. If you rely on ESRI products, you will most likely create an ArcGIS Server service. If you rely on Open Source technology, WMS or KML are good options.


Service Types include:


* ArcGIS Server Services
* Web Map Service (WMS)
* Keyhole Markup Language (KML)
* Web Feature Service (WFS)


### Data Type, Size and Performance


There are a number of factors specific to the spatial data that must be considered before creating a service. These include:


* Data type – will Raster or Vector data be added to the service?
* Complexity – as complexity increases performance often decreases
* Scale and Projection – determining the appropriate scale and projection will impact end user performance and usability
* Dynamic vs Cached service
	+ Will the service be used as an operational layer or as a base layer? Operational layers tend to be dynamic while base maps are usually cached services.
	+ Complex and large vector and raster dataset lend themselves to being cached as draw times of voluminous data will take longer than the user wants to wait.
	+ If data require frequent updates, dynamic services are often optimal due to the the time and server requirement to rebuild and cache the service with each update.


### Projections


* Web Mercator
	+ Considered the industry norm.
	+ Has been adopted by Microsoft Bing, Google and ESRI
	+ Based on a true spheroid so measure and area calculations will be inaccurate.
	+ Others:
		- Equal Area / Equidistant
		- State / Local
		- Custom


Note: If you decide to use a projection other than Web Mercator, a custom-tiled base map will need to be created. Other options include using dynamic layers are most basemap services are in Web Mercator and cannot be reprojected.


### Symbology


When symbolizing data for a service, the following should be considered:


* Simple Symbology – More complex symbology requires longer processing time by the server.
* Annotation or Dynamic Labels –
	+ Determine whether labels will be used. If so, will they need to be dynamic?
	+ Annotation layers will result in better performance but will not always be the best solution.
	+ Base Map Cartography
		- Consider the base map that will be used when symbolizing; what looks good on one base map may not look good on another.
		- Scale Dependency
			* Perhaps the layer does not need to be visible at all scales. The fewest layers being drawn at the same time results in better performance.





