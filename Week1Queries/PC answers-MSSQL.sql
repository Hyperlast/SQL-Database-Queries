SELECT MODEL,SPEED AS MHZ,HD AS GB FROM PC
WHERE PRICE < 1200;

SELECT DISTINCT MAKER FROM PRODUCT
WHERE TYPE = 'PRINTER';

SELECT MODEL,RAM,SCREEN FROM LAPTOP
WHERE PRICE > 1000;

SELECT * FROM PRINTER
WHERE COLOR = 'Y';

SELECT MODEL, SPEED, HD FROM PC 
WHERE PRICE <2000
AND CD = '12X'
OR CD = '16X';

