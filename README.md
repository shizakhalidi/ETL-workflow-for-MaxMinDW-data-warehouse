# ETL-workflow-for-MaxMinDW-data-warehouse

You  are  given  a  business  scenario of  Maximum  Miniatures  Inc. that  you  need  to understand and then attempt the following questions:
a) Design a star schemafor the requirements mentioned in the scenario for Manufacturing and Salesdata marts.
b) Generate a SQL script for your star schema and run that script to setup your data warehouse MaxMinDW in SQL server.
c) Build an ETL  workflow  in  SSIS  to  load the  data  from  given  source databases to MaxMinDWdata warehouse.

## Case Study–Maximum Miniatures Inc.
Maximum  Miniatures,  or  Max  Min,  Inc., manufactures  and  sells  small,  hand-painted figurines.  It  has  several  product  lines,  including  the  Woodland  Creatures  collection  of North American animals; the Mythic Worldcollection, which includes dragons, trolls, and elves; the  Warriors  of  Yorecollection  containing  various  soldiers  from  Roman  times  up through World War II; and the Guiding Lightscollection featuring replica lighthouses from the United States. The miniatures are made from clay, pewter, or aluminum. 

Max Min markets these miniatures through three different channels. It operates five of its  own  "Maximum  Miniature  World"  stores  dedicated  to  selling  the  Max  Min  product line. Max Min also operates MaxMin.com to sellits products online. In addition, Max Min sells wholesale to other retailers.

## Business Needs
Max Min, Inc. has experienced rapid growth in the past three years, with orders increasing by over 300%. This growth has put a strain on Max Min's only current Source of business intelligence, the printed report. Reports that worked well to support decision making just a  few  years  ago  now  take  an  hour  or  more  to  print  and  even  longer  to  digest.  These reports  work  at  the  detail  level  with  little  summarization.  Max Min's  current  systems provide few, if any, alternatives to the printed reports for viewing business intelligence.In addition, Max Min, Inc. is facing tough competition in a number of its product areas. This  competition  requires  Max  Min  to  practice  effective  decision  making  to  keep  its competitive edge. Unfortunately, Max Min's current business intelligence infrastructure, or lack thereof, is making this extremely difficult. Because of these issues, Max Min has launched a new project to create a true business intelligence environment to support its decision  making.  This  project  includes  the  design  of  a  data  warehouse  structure,  the population of that data warehouse from its current systems, and the creation of analysis applications to serve decision makers at all levels of the organization.

The new business intelligence platform is based on SQL Server 2005. After an extensive evaluation, it was decided that the SQL Server 2005 platform would provide the highest level  of  business  intelligence  capability  for  the  money  spent.  SQL  Server  2005  was  also chosen  because  it  features  the  tools  necessary  to  implement  the  data  warehouse  in  a relatively short amount of time. Let's take a quick look at Max Min's current systems.

## Current Systems
Max Min has five data processing systems that are expected to serve as sources for DW.

### Manufacturing Automation
The manufacturing automation system tracks the materials used to make each product. It  also  stores  which  products  are  manufactured  on  which  production  lines.  Finally,  this system tracks  the number of  items  manufactured during  each  shift.  The manufacturing automation  system uses  a proprietary data  storage  format.  Data  can be exported  from the manufacturing automation system to a comma-delimited text file. This text file serves as the source for loading the manufacturing data into the business intelligence systems.

### Order Processing
The  order  processing  system  manages  the  inventory  amounts for  all  products.  It  tracks wholesale  orders  placed  by  non-Max  Min  retailers.  The  system  also  records  product amounts sold through the Max Min retail stores and the Max Min online store to maintain inventory amounts.The  order  processing  system  tracks  order  fulfillment  including  product  shipping.  It  also generates  invoices  and  handles  the  payment  of  those  invoices.  In  addition,  this  system records  any  products  returned  from  the  retailer.  The  order  processing  system  uses  a Microsoft SQL Server database as its backend.

### Point of Sale
The point of sale (POS) system manages the cash registers ateach of the five Max Min-owned retail stores. This system also tracks the inventory at each retail store using UPC bar code stickers placed on each item. The POS system handles both cash and credit card transactions. It also tracks information on any products returned by the customer.Information from each of the five POS systems is exported to an XML file. This XML file is transferred, using FTP, to a central location nightly. These XML files serve as the source for loading the POS data into the businessintelligence systems.

### MaxMin.com
The MaxMin.com online store is an ASP.NET application. It uses SQL Server as its backend database. All sales through the online store are paid with a credit card. All customers of the  online  store  must  provide  name,  address,  phone  number,  and  e-mail  address  with each purchase.The online store tracks the shipping of orders. It also handles any products returned by customers.  Finally,  the  online  store  saves  information  on  product  promotions  and discounts that are run on thestore site.

### Accounting
The accounting system tracks all the financial transactions for Max Min, Inc. This includes the  purchase  of  raw  materials  for  manufacturing.  The  accounting  system  uses  a  Visual FoxPro database for its backend.
