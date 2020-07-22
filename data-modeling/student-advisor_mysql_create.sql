CREATE TABLE `Student` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	`Major` bigint UNIQUE,
	`Advisor` bigint UNIQUE,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Major` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Advisor` (
	`ID` bigint NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	`Major` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`ID`)
);

ALTER TABLE `Student` ADD CONSTRAINT `Student_fk0` FOREIGN KEY (`Major`) REFERENCES `Major`(`ID`);

ALTER TABLE `Student` ADD CONSTRAINT `Student_fk1` FOREIGN KEY (`Advisor`) REFERENCES `Advisor`(`ID`);

ALTER TABLE `Advisor` ADD CONSTRAINT `Advisor_fk0` FOREIGN KEY (`Major`) REFERENCES `Major`(`ID`);

