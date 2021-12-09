---
acf: []
author: admin
categories:
- developers
comment_status: open
date: '2012-09-24T12:35:25'
date_gmt: '2012-09-24T16:35:25'
excerpt: '<p>&nbsp;</p>

  '
featured_media: 0
format: standard
guid: http://www.data.gov/?p=5150
id: 5150
link: https://www.data.gov/developers/blog/primer-machine-readability-online-documents-and-data
meta: []
modified: '2017-10-02T18:18:21'
modified_gmt: '2017-10-02T22:18:21'
permalink: /developers/blog/primer-machine-readability-online-documents-and-data/
ping_status: open
redirect_from:
- /developers/primer-machine-readability-online-documents-and-data/
slug: developers__blog__primer-machine-readability-online-documents-and-data
status: publish
sticky: false
tags: []
template: ''
title: A Primer on Machine Readability for Online Documents and Data
type: post
---
Submitted by Jim Hendler, Head, Department of Computer Science, Rensselaer Polytechnic Institute and Theresa A. Pardo, Director, Center for Technology in Government, Associate Research Professor, Public Administration and Policy and Informatics, University at Albany, State University of New York.


Government agencies are investing in strategies to increase access to information created, collected, and held by government. While these strategies typically involve placing information on the web, they sometimes exhibit a misunderstanding of the importance of providing that information in “machine readable” formats. The degree to which information is machine readable, however, is critical to meeting priorities such as open government and open data, and directly influences, and in many cases limits, the uses citizens and other interested parties can make of that information.


Historically, efforts to make government information available to the public have focused on pushing static information about government programs and services to the web. The intended user has been a human who can read, print, and take actions based on reading the material or by engaging in a form-based transaction. In some cases, users were able to query the data or map the results using sophisticated geospatial displays. Access to the data itself, on the other hand, was rarely provided.


This historical practice has been dictated in large part by the capabilities of familiar web technologies (such as HTML and PDF) and a narrow vision of the expected users and uses of the information. Machine readable formats expand that field of vision to new users and new uses and require technologies (such as RDF, XML, and JSON) that may be less familiar in this context, but are still proven and widely used in other arenas (such as web services and content management). Taking the next step to machine readable formats requires government agencies to fully appreciate the potential uses of government information as well as the range of possible formats and the implications of those formats on intended use.


So where to begin? An important starting point is to understand that “machine readable” is not synonymous with “digitally accessible” information.  Scanning a report, the text, graphics, or even rows and columns of numbers, makes it digitally accessible, but a computer still is not really able to “understand” the information. This distinction can be seen in the difference between a magazine cover and a barcode on that cover. A computer cannot directly understand what the picture on the magazine represents, even if it is presented in an online format, but it can read and understand the bar code, using it for identifying the price and tracking the purchase, for example.


Let’s consider the significance of that bar code – a machine readable format that’s universally embedded in products and documents today, but was virtually unseen just 40 years ago. What are some factors that account for its prevalence now?


* Uniformity – The standard format of the UPC (Universal Product Code) established in the 1970’s made widespread adoption possible as tools for printing and processing the UPC could develop around an accepted model.
* Simplicity – The bar code itself is a rather unobtrusive symbol that today has relatively little impact on its attached product. Consumers barely notice it and it’s created without much additional effort.
* Ubiquity – The bar code, which was introduced for grocery store items, now appears on virtually every item that can be purchased or distributed.
* Economy – The cost savings realized through faster, more accurate transaction processing made the bar code a worthwhile investment. The savings soon extended to better inventory management, customer relationships, and theft control (you can’t switch bar codes as easily as you can switch price tags).
* Extensibility – The types and amount of data that could be stored and processed via bar codes expanded its application to areas such as health care (for tracking patient and medication information in hospital settings), distribution (for tracking and expediting shipping and mailing), and scientific research (for banding birds and other wildlife) to name just a few.


Similar factors are now coming into play with the advent of machine readable formats for government data. The expectation of similar benefits in usability, payback, and extensibility should provide the motivation. To realize these benefits, similar conditions also apply. Uniformity and standardization in data formats and processing are needed. Simplicity in creating and embedding the formats must be achieved. Cost advantages must be realized through their use to justify their creation. When these conditions are met, machine readable data become more prevalent leading in turn to increased capabilities.


For these reasons and as commitments to open government and transparency increase, efforts to make information available must include machine readable versions of datasets and not only reports about this information in document form (such as PDF, HTML, and JPG).  Consider a bar chart in a government report. You can read the report in PDF format and understand the analysis the chart provides. However, neither the chart itself nor its underlying data is available in a way that allows further processing of that information. Next generation efforts in opening government must ensure that users have access, for example, not just to a static bar chart image, but also to information about the source of that bar chart and the underlying data itself, much as the magazine bar code described above reveals far more data about the magazine that can be leveraged for additional benefits.


In a practical sense, machine readable information helps government agencies to bridge the gap between “documents” (which are typically static and frozen in their format) and “data” (which may be dynamic and can be open to further processing). By adopting a machine readable perspective, these same agencies can meet their open government and open data objectives more completely, reliably, and responsibly.


Further implications of “documents” versus “data” and the various levels of machine readability, along with the conditions required for broader and deeper implementation, are far beyond the scope of this paper which intends to provide a basic awareness of the main components of machine readable information. To aid in that awareness, the following sections briefly outline the characteristics and differences between documents and data and take a quick look at the special case of syndication formats. It concludes with a glossary of relevant terms. Subsequent papers will address the issues surrounding machine readability and related policies in greater detail.


***Machine Readability for Text Documents***


**PDF (Portable Document Format)** is the primary format used to make government information available to the public in document form. While PDF has made it possible for many documents to be available on the web, simply providing a PDF report does not fully address the need to have information about the document itself or its underlying data. For example, the PDF does not necessarily indicate who authored it, where it came from, or the nature of its content. This type of information about the document is often referred to as the “metadata” for the document. Much as a bar code contains additional data about a product, this metadata provides additional data that can assist citizens and researchers searching by a particular author or on a particular topic. Without access to metadata on the thousands of government documents on the web, citizens are essentially looking for a needle in a haystack. There are a number of tools available to extract that kind of information from many kinds of PDF documents and to make it available for use by application developers to ensure that data is available for searching by citizens and others. Thus, PDF documents are a step towards machine readability, but are most useful when enhanced with appropriate metadata.


**XML (eXtensible Markup Language)** was developed for several purposes, one of which is to make the metadata of documents more directly available.  XML, when properly used, tags information in a document so that computers can automatically extract it to help provide users with capabilities such as searching, browsing, and information discovery.  Along these lines, an important emerging property of XML involves providing mechanisms for tracking versions of a document.  When used, it allows the history of a document to be made available to others — an important capability for tracking legislation, policy guidance, and decision memos.


Producing quality metadata is pivotal to the ability of search tools to find a particular document in response to particular queries. XML does not produce metadata, but is a tool to make it available for use. Producing metadata and then ensuring its use through languages such as XML falls to the document owners and producers and the technologists who support them.


***Machine Readability for Data***


Machine readability directly influences data usability. Datasets, in particular very large datasets, on their own convey little information to a human. Only when that data is processed in some way — visualized, analyzed, or summarized — does it becomes informative or useful. Thus, to fully realize the potential of open government data, government agencies must release their data in a format that allows processing.  Providing innovators, journalists, and other end users with data in this way makes it possible for them to better understand the raw data, to examine it in ways that meet their interests and responds to their questions. It allows them to drive their businesses; in some cases it becomes their businesses.


The most common machine readable format for data is “Comma Separated Variables” (CSV), which is provided directly by many standard database and spreadsheet products.  CSV stores tabular data in a text-based format, making it easily exchanged by machines.  CSV, like XML for documents, does not inherently make metadata available. There are a number of metadata formats being developed for use along with CSV, but currently these tend to be defined by those developing open data websites, rather than the data providers themselves.


A general problem with CSV is that because it is primarily text-based, it makes it difficult for computers to find common elements between datasets.  If one dataset has a value of “Alaska” and another has one of “AK” then separate information must be retained somewhere that can link these things to each other.  The term “linked data” and the emerging Resource Description Framework (RDF) standard are designed to both enhance the capability of datasets to have their metadata directly attached and also to allow common terms to be related throughout datasets. These features of RDF are making it increasingly attractive for modern open data sites.


***Syndication Formats*** 


When information is published in machine readable formats, that information, and especially its metadata, can be shared via “syndication” that enables automatic, continuous feeds of information.  A user, using any one of a number of applications, can request that the information be “pushed” to their machine.  Common syndication formats, such as RSS, Atom and JSON are thus used for sharing machine readable documents, but are not themselves machine readability solutions. They can be viewed more accurately as beneficial outcomes of machine readability, an outcome that most people are familiar with today.


***A Glossary for Machine Readability***


The following glossary provides basic definitions for terms and acronyms that you may encounter when investigating machine readability. They are arranged alphabetically, not by topic or theme.


**API:** (Application Programming Interface) When information is made available in any machine readable format, it becomes possible to make that information directly available to programs that request that information over the web.  An API is the way this information is made directly available to other machines.


**Atom:** Atom is a machine syndication format based on XML.  It is widely used in applications that publish documents or news items, and then syndicate the basic metadata about that document (title, authors, etc.).


**CSV:** (Comma separated values) A format that stores tabular data (numbers and text) in plain-text form. CSV is an open format and is widely used to store and organize tabular data. Most open government data sites use CSV as the data release format.


**Digital Formats**: Any format that can be stored, viewed and shared by a computer. While all machine readable formats are also digital formats, not all digital formats are machine readable.


**Five-star (linked open) Data:** Tim Berners-Lee, inventor of the World Wide Web, proposed a rating scheme for open government data.  He suggested that making data available online was one star, making it machine readable was two-stars, using an open-format was three stars, using RDF format was four stars, and using RDF with links to other datasets was five stars.


**HTML**:  (HyperText Markup Language) The main markup language for displaying web pages and other information in a web browser. HTML is an open standard by the W3C. The tags and markup of HTML mainly relate to how information is displayed to a human user, not to the information itself. In general, putting a document in HTML, without some form of tagging or metadata, is not considered making it machine readable in a useful sense.


**JSON**: (JavaScript Object Notation) A machine readable data format derived from the JavaScript language used on many web sites.  It is used for representing simple data structures and associative arrays. As a data serialization format it is language and machine independent. JSON is an open format and is defined in RFC 4627. JSON is also used by Facebook as a way of publishing public social-networking information, which is increasing its use in datasharing and syndication applications.


**Metadata**: Machine readable data is most useful when information about who produced it, when, etc. is associated with the data. Both documents and structured datasets require metadata to be searchable, sharable, etc.


**Open Format:** The U.S. Government through the Open Government Directive ([http://www.whitehouse.gov/omb/assets/memoranda\_2010/m10-06.pdf](https://obamawhitehouse.archives.gov/omb/assets/memoranda_2010/m10-06.pdf)) defines an open format as “one that is platform independent, machine readable, and made available to the public without restrictions that would impede the re-use of that information.” All of the formats discussed in this document are Open Formats.


**PDF**: (Portable Document Format) A file format used mainly to represent documents such that layout will stay the same independent of the system environment. As of 2008, Adobe released the PDF format as an open standard. PDF is mainly a human readable format, concerned with layout and organization. Tools for connecting metadata to PDF or extracting the text from it make PDF more machine readable than many other document formats.


**RDF:** (Resource Description Framework) A data language used to represent data and information as web resources so that the can be “linked” together. RDF is an open standard from the W3C. RDF is increasing in popularity as a data release language as it allows common terms to be linked between datasets.


**RSS:** (Really Simple Syndication) An XML (or RDF) based language used to publish frequently updated works. Includes both content and metadata about the content (i.e., author and date). An RSS feed is a common syndication method for sharing documents published on the web.


**Schema.org**: Schema.org is a way of embedding metadata about common objects into other web documents. It is supported by Bing, Google, Yahoo! and other web search engines.  Use of Schema.org enhances the ability of search engines to find machine readable documents and to optimize their search rank.  Use of schema.org is an increasingly important enhancement to machine readable documents due to its role in increasing Search Engine Optimization for online resources.


**Syndication Formats**: Digital formats used to help publish continuous feeds of information.


**XML:** (eXtensible Markup Language) A markup language that defines a set of rules for encoding documents in a format that can be both human and machine readable. XML is an open format created and maintained by the W3C. XML is enhanced by proper use of XML schemas or by use of metadata embedded in the XML.


