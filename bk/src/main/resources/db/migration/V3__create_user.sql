CREATE TABLE user
(
id INT AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
username VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
mobile_no VARCHAR(10),
email_ID VARCHAR(30),
active CHAR(1) DEFAULT 'I', 
user_roleId NUMERIC,
CONSTRAINT id_pk PRIMARY KEY ( id ),
CONSTRAINT username_UQ UNIQUE ( username ),
CONSTRAINT active_CQ CHECK ( active IN ('A','I') ),
CONSTRAINT user_roleId_fk FOREIGN KEY ( user_roleId ) REFERENCES role(roleId)
);
