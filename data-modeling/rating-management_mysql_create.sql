CREATE TABLE `Customer` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` bigint NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `CustomerRating` (
	`CustomerID` bigint NOT NULL UNIQUE,
	`ProductID` bigint NOT NULL UNIQUE,
	`Rating` int NOT NULL
);

CREATE TABLE `Product` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

ALTER TABLE `CustomerRating` ADD CONSTRAINT `CustomerRating_fk0` FOREIGN KEY (`CustomerID`) REFERENCES `Customer`(`ID`);

ALTER TABLE `CustomerRating` ADD CONSTRAINT `CustomerRating_fk1` FOREIGN KEY (`ProductID`) REFERENCES `Product`(`ID`);

