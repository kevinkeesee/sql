CREATE TABLE `Product` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Vendor` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	`Product` bigint(255) NOT NULL UNIQUE,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Order` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Product` bigint NOT NULL,
	`Vendor` bigint NOT NULL UNIQUE,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Customer` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	`Order` bigint(255),
	PRIMARY KEY (`ID`)
);

ALTER TABLE `Vendor` ADD CONSTRAINT `Vendor_fk0` FOREIGN KEY (`Product`) REFERENCES `Product`(`ID`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk0` FOREIGN KEY (`Product`) REFERENCES `Product`(`ID`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk1` FOREIGN KEY (`Vendor`) REFERENCES `Vendor`(`ID`);

ALTER TABLE `Customer` ADD CONSTRAINT `Customer_fk0` FOREIGN KEY (`Order`) REFERENCES `Order`(`ID`);

