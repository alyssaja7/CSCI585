/**
 * DB software I use is ORACLE Live SQL
 * 
 * This query select the rows that chef can make any kind of desserts which is contained in the DISHES TABLE, 
 * by inner join DISHES and CATERING on the specific condition.
 * Then this query only output the rows that chefs make all of the desserts in the DISHES TABLE.
 * 
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

SELECT * FROM CATERING;

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
INNER JOIN DISHES 
ON CATERING.DISH = DISHES.DISHNAME
GROUP BY CHEF 
HAVING COUNT(DISTINCT DISH) = (SELECT COUNT(DISTINCT DISHNAME) FROM DISHES);












