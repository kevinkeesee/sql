CREATE TABLE `Physician` (
	`ID` INT NOT NULL AUTO_INCREMENT,
	`Name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Patient` (
	`ID` INT NOT NULL AUTO_INCREMENT,
	`Name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `PhysicianPatient` (
	`PhysicianID` INT NOT NULL UNIQUE,
	`PatientID` INT NOT NULL UNIQUE
);

CREATE TABLE `PatientDiagnosis` (
	`PatientID` INT NOT NULL UNIQUE,
	`Diagnosis` VARCHAR(255) NOT NULL UNIQUE
);

ALTER TABLE `PhysicianPatient` ADD CONSTRAINT `PhysicianPatient_fk0` FOREIGN KEY (`PhysicianID`) REFERENCES `Physician`(`ID`);

ALTER TABLE `PhysicianPatient` ADD CONSTRAINT `PhysicianPatient_fk1` FOREIGN KEY (`PatientID`) REFERENCES `Patient`(`ID`);

ALTER TABLE `PatientDiagnosis` ADD CONSTRAINT `PatientDiagnosis_fk0` FOREIGN KEY (`PatientID`) REFERENCES `Patient`(`ID`);

