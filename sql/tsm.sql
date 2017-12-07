use tsm;

-- Create Table statements

CREATE TABLE companytbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  address1 varchar(255) DEFAULT NULL,
  address2 varchar(255) DEFAULT NULL,
  city varchar(45) DEFAULT NULL,
  state char(2) DEFAULT NULL,
  zip varchar(10) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE clienttbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  address1 varchar(255) DEFAULT NULL,
  address2 varchar(255) DEFAULT NULL,
  city varchar(45) DEFAULT NULL,
  state char(2) DEFAULT NULL,
  zip varchar(10) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE timesheettbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	clientid bigint(20) unsigned NOT NULL DEFAULT '0',
  employeeid bigint(20) unsigned NOT NULL DEFAULT '0',
  hours decimal(5,2) DEFAULT 0.0,	
	comments varchar(255) DEFAULT NULL,
  weekending datetime DEFAULT NULL,
  enterdate datetime DEFAULT NULL,
  PRIMARY KEY (id)
); 


CREATE TABLE invoicetbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  clientid bigint(20),
  weekending datetime DEFAULT NULL,
  amount decimal(10,2) DEFAULT NULL,
  datecreated datetime DEFAULT NULL,
  datepaid datetime DEFAULT NULL,
  status int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- Insert Statements

DROP TABLE employeetbl;

CREATE TABLE employeetbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  rate decimal(5,2) DEFAULT NULL,
  address1 varchar(255) DEFAULT NULL,
  address2 varchar(255) DEFAULT NULL,
  city varchar(45) DEFAULT NULL,
  state char(2) DEFAULT NULL,
  zip varchar(10) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `employeetbl` VALUES 
(1,'Sylvia Selfridge',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(2,'Jaclyan Innus',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(3,'Susan Demasi',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(4,'Karen Hiller',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(5,'Sue Ellen Hille',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(6,'Deb Norton',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(7,'April Richard',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(8,'Kelly Cook',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(9,'Marta Witthoft',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(10,'Shirly Inns',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(11,'Kerry Favazza',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(12,'Ellen Porter',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(13,'Jackie Amero',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);

SELECT * INTO OUTFILE "/tsmdata.csv"
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY "\n"
FROM tsm.timesheettbl;


