CREATE DATABASE cfunited2010 /*!40100 DEFAULT CHARACTER SET latin1 */;

USE cfunited2010;

DROP TABLE IF EXISTS speakers;
CREATE TABLE speakers (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE evaluations (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  speakerId int(10) unsigned DEFAULT NULL,
  title varchar(45) DEFAULT NULL,
  comments varchar(45) DEFAULT NULL,
  name varchar(45) NOT NULL,
  email varchar(45) NOT NULL,
  PRIMARY KEY (id),
  KEY FK_evals_1 (speakerid) USING BTREE,
  CONSTRAINT FK_evals_1 FOREIGN KEY (speakerid) REFERENCES speakers (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO speakers (name) VALUES ('Bob');
INSERT INTO speakers (name) VALUES ('Marc');
INSERT INTO speakers (name) VALUES ('Bill');
INSERT INTO speakers (name) VALUES ('Adam');