CREATE TABLE book
(
isbn NUMERIC(13),
title VARCHAR(30) NOT NULL,
author VARCHAR(30) NOT NULL,
publish_date DATE,
content VARCHAR(500),
price FLOAT(6,2) NOT NULL,
status VARCHAR(10),
CONSTRAINT isbn_pk PRIMARY KEY (isbn),
CONSTRAINT price_cq CHECK ( price>0 ),
CONSTRAINT status_cq CHECK (status IN('draft','published')));

INSERT INTO book (isbn, title, author, publish_date, content, price, status) VALUES 
( 
7781561925253, 
'HARRY POTTER', 
'J.K. ROWLING', 
STR_TO_DATE('12/12/1998','%d/%m/%Y') , 
'The novels chronicle the life of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley',
499.00, 
'PUBLISHED'
);

INSERT INTO book (isbn, title, author, publish_date, content, price, status) VALUES 
( 
8881550725379, 
'TWLIGHT', 
'STEPHANIE MEYER', 
STR_TO_DATE('16/07/2004','%d/%m/%Y') , 
'When Bella Swan relocates to Forks, Washington, to live with her father, she meets a mysterious Edward Cullen to whom she finds herself drawn. Later, she discovers that he is a vampire',
599.50, 
'PUBLISHED'
);

INSERT INTO book (isbn, title, author, publish_date, content, price, status) VALUES
( 
9781447282068, 
'TRUTHWITCH', 
'SUSAN DENNARD', NULL, 
'Truthwitch by Susan Dennard is a brilliantly imagined coming-of-age story perfect for fans of Robin Hobb, Sarah J. Maas and Trudi Canavan. In a continent on the edge of war, two witches hold its fate in their hands.Young witches Safiya and Iseult have a habit of finding trouble. ',
275.50, 
'DRAFT'
);