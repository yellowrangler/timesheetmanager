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

CREATE TABLE epmployeetbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  firstname varchar(255) DEFAULT NULL,
  lastname varchar(255) DEFAULT NULL,  
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

CREATE TABLE timesheettbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	clientid bigint(20) unsigned NOT NULL DEFAULT '0',
  hours datetime DEFAULT NULL,	
	comments varchar(255) DEFAULT NULL,
  enterdate datetime DEFAULT NULL,
  PRIMARY KEY (id)
); 


CREATE TABLE invoicetbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  clientid bigint(20),
  weekending varchar(255) DEFAULT NULL,
  amount decimal(10,2) DEFAULT NULL,
  datecreated datetime DEFAULT NULL,
  datepaid datetime DEFAULT NULL,
  status int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- Insert Statements
