CREATE TABLE role            
(
roleId NUMERIC ,
name VARCHAR(50) NOT NULL,
CONSTRAINT roleId_pk PRIMARY KEY ( roleId ),
CONSTRAINT roleId_cq CHECK ( roleId BETWEEN 1 AND 3 ),
CONSTRAINT name_cq CHECK ( name IN ('user', 'author', 'admin' ))
);

INSERT INTO role (roleId, name) VALUES
(
1,
"admin"
);

INSERT INTO role (roleId, name) VALUES
(
2,
"author"
);

INSERT INTO role (roleId, name) VALUES
(
3,
"user"
);