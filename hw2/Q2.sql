/**
 * DB software I use is ORACLE Live SQL
 */

CREATE TABLE enrollment(   
	SID INTEGER NOT NULL,   
	ClassName VARCHAR(10) NOT NULL,   
	Grade VARCHAR(2) NOT NULL, 
	PRIMARY KEY (SID, ClassName)
);

INSERT INTO enrollment 
VALUES (123, 'ARCH201', 'A');

INSERT INTO enrollment 
VALUES (123, 'QUAN432', 'B');

INSERT INTO enrollment 
VALUES (662, 'AMER352', 'B');

INSERT INTO enrollment 
VALUES (662, 'ECON966', 'A');

INSERT INTO enrollment 
VALUES (662, 'QUAN432', 'B');

INSERT INTO enrollment 
VALUES (345, 'QUAN432', 'A');

INSERT INTO ENROLLMENT 
VALUES (345, 'ECON966', 'D');


SELECT DISTINCT ClassName, COUNT(*) AS TOTAL 
FROM enrollment
GROUP BY ClassName    
ORDER BY Total DESC;

