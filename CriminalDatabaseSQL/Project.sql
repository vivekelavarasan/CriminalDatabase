CREATE DATABASE CRIMINALDATABASE;

CREATE TABLE CRIMINAL
(IdNo		CHAR(9)			NOT NULL,
FName		VARCHAR(15)		NOT NULL,
LName		VARCHAR(15)		NOT NULL,
LocCity		VARCHAR(15)		NOT NULL,
LocState	CHAR(2)			NOT NULL,
LocZip		CHAR(5)			NOT NULL,
SSN			CHAR(9)			NOT NULL,
IncarDate	DATE			NOT NULL,
PRIMARY KEY (IdNo),
UNIQUE (SSN));

INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('111111111','Richard','Castle','Dallas','TX','75313','748392094','2009-08-01');
INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('222222222','Kate','Beckett','Fort Worth','TX','76133','495163479','2010-01-31');
INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('333333333','Gregory','House','Austin','TX','78756','751354698','2006-09-20');
INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('444444444','Jack','Bauer','Waco','TX','76704','945816547','2004-05-11');
INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('555555555','Erin','Rogers','Richardson','TX','75080','258461539','2013-07-04');
INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('666666666','Jason','Bourne','Houston','TX','77004','147152836','1994-03-13');
INSERT INTO CRIMINAL (IdNo, FName, LName, LocCity, LocState, LocZip, SSN, IncarDate)
VALUES ('777777777','Sherlock','Holmes','El Paso','TX','79902','617523485','1957-02-01');



CREATE TABLE IDENTIFICATION
(SSN			CHAR(9)			NOT NULL,
PrintsID		CHAR(6)			NOT NULL,
HairCo			VARCHAR(10)		NOT NULL,
EyeCo			VARCHAR(10)		NOT NULL,
BloodType		VARCHAR(2)		NOT NULL,
Sex				CHAR(1)			NOT NULL,
Age				VARCHAR(3)		NOT NULL,
PRIMARY KEY (SSN),
FOREIGN KEY (SSN) REFERENCES CRIMINAL (SSN));  

INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('748392094','123456','Brown','Blue','A','M','36');
INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('495163479','234567','Blonde','Hazel','A','F','27');
INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('751354698','345678','White','Teal','AB','M','54');
INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('945816547','456789','Brown','Brown','O','M','45');
INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('258461539','567890','Pink','White','B','F','20');
INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('147152836','678901','Brown','Black','AB','M','24');
INSERT INTO IDENTIFICATION (SSN, PrintsID, HairCo, EyeCo, BloodType, Sex, Age)
VALUES ('617523485','789012','White','Green','A','M','95');



CREATE TABLE CHARGE
(IdNo				CHAR(9)			NOT NULL,
Charge1				VARCHAR(30)		NOT NULL,
Charge2				VARCHAR(30)		,
Charge3				VARCHAR(30)		,
Charge4				VARCHAR(30)		,
Charge5				VARCHAR(30)		,	
PRIMARY KEY (IdNo),
FOREIGN KEY (IdNo) REFERENCES CRIMINAL(IdNo));  

INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('111111111', 'Public Disturbance', NULL, NULL,NULL, NULL);
INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('222222222', 'Vandalism', 'Harassement', NULL,NULL, NULL);
INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('333333333', 'Substance Abuse', 'Malpractice', 'Breaking and Entering',NULL, NULL);
INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('444444444', 'Murder', 'Man Slaughter', 'Assault',NULL, NULL);
INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('555555555', 'Contempt', NULL, NULL,NULL, NULL);
INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('666666666', 'Treason', 'Blackmail', 'Violation of Federal Contract', NULL, NULL);
INSERT INTO CHARGE (IdNo, Charge1, Charge2, Charge3, Charge4, Charge5)
VALUES ('777777777', 'Substance Abuse', 'Invasion of Privacy', NULL,NULL, NULL);



CREATE TABLE SENTENCE
(IdNo			CHAR(9)			NOT NULL,
ReleaseDate		DATE			,
Behavior		VARCHAR(15)		NOT NULL,
ParoleApp		CHAR(2)			NOT NULL,		
PRIMARY KEY (IdNo),
FOREIGN KEY (IdNo) REFERENCES CRIMINAL (IdNo));  

INSERT INTO SENTENCE (IdNo, ReleaseDate, Behavior, ParoleApp)
VALUES ('111111111','2013-08-01','Average','NA');
INSERT INTO SENTENCE (IdNo, ReleaseDate, Behavior, ParoleApp)
VALUES ('222222222','2014-01-05','Good','Y');
INSERT INTO SENTENCE (IdNo, ReleaseDate, Behavior, ParoleApp)
VALUES ('333333333','2030-03-21','Bad','Y');
INSERT INTO SENTENCE (IdNo, ReleaseDate, Behavior, ParoleApp)
VALUES ('444444444',NULL,'N/A','N');
INSERT INTO SENTENCE (IdNo, ReleaseDate, Behavior, ParoleApp)
VALUES ('555555555','2013-07-05','Good','NA');
INSERT INTO SENTENCE (IdNo, ReleaseDate, Behavior, ParoleApp)
VALUES ('666666666',NULL,'N/A','N');
