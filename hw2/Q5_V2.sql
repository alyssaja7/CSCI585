/**
 * DB software I use is ORACLE Live SQL
 * 
 * As for each row in the CATERING table, first check whether there is a row 
 * with the same dessert name in the DISHES menu.
 * Select the rows satisfied with the above condition.
 * Then this query only output the rows that chefs can make the same number of dessert 
 * as the number of desserts required by the DISHES menu.
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
WHERE EXISTS(SELECT * FROM DISHES WHERE DISHES.DISHNAME = CATERING.DISH) 
GROUP BY CHEF 
HAVING COUNT(DISTINCT DISH) = (SELECT COUNT(DISTINCT DISHNAME) FROM DISHES);

