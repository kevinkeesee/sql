CREATE TABLE `Customer Orders` (
	`customerID` bigint NOT NULL AUTO_INCREMENT,
	`customerName` varchar(255) NOT NULL,
	`teas` bigint NOT NULL,
	`coffees` bigint NOT NULL,
	`coffee mugs` bigint NOT NULL,
	`frappuccinos` bigint NOT NULL,
	PRIMARY KEY (`customerID`)
);

