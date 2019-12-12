/**
 * DB software I use is ORACLE Live SQL
 * 
 * First create two seperate tables named CATERING AND DISHES.
 * Then go to CATERING TABLE and find the list of chefs who can make Creme brulee.
 * Then intersects with the list of chefs who can make Apple pie.
 * Then finally intersects with the list of chefs who can make Tiramisu 
 * and output the coresponding list of chefs.
 */

CREATE TABLE CATERING( 
    Chef VARCHAR(2) NOT NULL, 
    Dish VARCHAR(100) NOT NULL 
);

INSERT INTO CATERING 
VALUES('A', 'Apple pie');

INSERT INTO CATERING 
VALUES('A', 'Beignet');

INSERT INTO CATERING 
VALUES('A', 'Andes Chocolate Cake');

INSERT INTO CATERING 
VALUES('B', 'Tiramisu');

INSERT INTO CATERING 
VALUES('B', 'Creme brulee');

INSERT INTO CATERING 
VALUES('B', 'Beignet');

INSERT INTO CATERING 
VALUES('C', 'Tiramisu');

INSERT INTO CATERING 
VALUES('C', 'Creme brulee');

INSERT INTO CATERING 
VALUES('D', 'Apple pie');

INSERT INTO CATERING 
VALUES('D', 'Tiramisu');

INSERT INTO CATERING 
VALUES('D', 'Creme brulee');

INSERT INTO CATERING 
VALUES('E', 'Apple pie');

INSERT INTO CATERING 
VALUES('E', 'Bananas Foster');

INSERT INTO CATERING 
VALUES('E', 'Creme brulee');

INSERT INTO CATERING 
VALUES('E', 'Tiramisu');


CREATE TABLE DISHES( 
    DISHNAME VARCHAR(100) NOT NULL 
);

INSERT INTO DISHES 
VALUES('Creme brulee');

INSERT INTO DISHES 
VALUES('Apple pie');

INSERT INTO DISHES 
VALUES('Tiramisu');


SELECT CHEF FROM CATERING 
WHERE CATERING.DISH = 'Creme brulee' 
INTERSECT 
SELECT CHEF FROM CATERING 
WHERE CATERING.DISH = 'Apple pie' 
INTERSECT 
SELECT CHEF FROM CATERING 
WHERE CATERING.DISH = 'Tiramisu';

