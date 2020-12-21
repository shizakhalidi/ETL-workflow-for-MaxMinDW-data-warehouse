USE master;
GO
CREATE DATABASE MaxMinManufacturingDW
GO
USE MaxMinManufacturingDW


create table DimBatch
(batchID int NOT NULL PRIMARY KEY, 
batchNum int NOT NULL
);

create table DimMachine
(machineNum int NOT NULL PRIMARY KEY,
machineName varchar(50) NOT NULL,
machineType varchar(30) NOT NULL,
plantNum int NOT NULL,
plantName varchar(50) NOT NULL,
countryCode varchar(10) NOT NULL,
country varchar(30) NOT NULL,
material varchar(50) NOT NULL,
manufacturer varchar(50) NOT NULL,
dateofPurchase datetime NOT NULL
);

create table DimProduct
(productCode int NOT NULL PRIMARY KEY,
productName varchar(50) NOT NULL ,
productSubTypeCode int NOT NULL,
productSubType varchar(50) NOT NULL,
productTypeCode int NOT NULL,
productType varchar(50) NOT NULL
);

create table DimTime
(
timeKey int NOT NULL primary key,
dayval int NOT NULL,
monthval int NOT NULL,
yearval int NOT NULL,
quarterval int NOT NULL 
);

create table ManufacturingFact
(acceptedProducts int,
rejectedProducts int,
elapsedTimeforManufacturinginMinutes int,
productCode int,
batchID int,
machineNum int,
timeKey int
);

use [MaxMinManufacturingDW]

ALTER TABLE ManufacturingFact
ADD CONSTRAINT FKproductCode
FOREIGN KEY (productCode) REFERENCES DimProduct(productCode);

AlTER TABLE ManufacturingFact
ADD CONSTRAINT FKbatchID
FOREIGN KEY (batchID) REFERENCES DimBatch(batchID);

AlTER TABLE ManufacturingFact
ADD CONSTRAINT FKmachineNum 
FOREIGN KEY (machineNum)REFERENCES DimMachine(machineNum);

AlTER TABLE ManufacturingFact
ADD CONSTRAINT FKtimeKey
FOREIGN KEY (timeKey)REFERENCES DimTime(timeKey);
GO