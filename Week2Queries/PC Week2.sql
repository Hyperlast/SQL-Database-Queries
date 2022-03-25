SELECT  Pr.MAKER, Lp.SPEED FROM PRODUCT Pr, LAPTOP Lp
WHERE Lp.hd = 9 OR Lp.hd>9
AND Lp.model = PR.model;

SELECT PROD.model, L.Price 
FROM PRODUCT PROD, LAPTOP L
WHERE PROD.maker = 'B' AND PROD.model = L.model
UNION
SELECT PROD.model, PCS.Price
FROM PRODUCT PROD, PC PCS
WHERE PROD.maker = 'B' AND PROD.model = PCS.model
UNION 
SELECT PROD.MODEL, P.price
FROM PRODUCT PROD, PRINTER P
WHERE PROD.maker = 'B' AND PROD.model = P.model;

SELECT MAKER FROM PRODUCT
WHERE product.type = 'Laptop'
EXCEPT
SELECT MAKER FROM product
WHERE product.type = 'PC' 

SELECT DISTINCT o1.HD FROM PC o1, PC o2
WHERE o1.HD = o2.hd 
AND o1.code != o2.code

SELECT DISTINCT O1.model,O2.model FROM PC O1, PC O2
WHERE O1.RAM = O2.RAM 
AND O1.speed = O2.SPEED 
AND O1.model != O2.model
AND O1.model < O2.model;

SELECT DISTINCT PR1.MAKER FROM PRODUCT PR1, PRODUCT PR2, PC O1, PC O2
WHERE O1.SPEED >= 400 
AND O2.SPEED >= 400
AND O1.CODE != O2.CODE
AND PR1.model=O1.model 
AND PR2.model = O2.model
AND PR1.maker = PR2.maker;
