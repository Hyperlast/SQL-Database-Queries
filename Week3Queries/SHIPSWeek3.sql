SELECT DISTINCT COUNTRY FROM CLASSES
WHERE NUMGUNS >= ALL(SELECT NUMGUNS FROM CLASSES);

SELECT DISTINCT CLASS FROM SHIPS
WHERE NAME = ANY(SELECT SHIP FROM OUTCOMES WHERE RESULT = 'SUNK');

SELECT NAME,CLASS FROM SHIPS
WHERE CLASS = ANY(SELECT CLASS FROM CLASSES WHERE BORE = 16)

SELECT BATTLE FROM OUTCOMES
WHERE SHIP = ANY(SELECT NAME FROM SHIPS WHERE CLASS = 'Kongo')

SELECT CLASS,NAME FROM SHIPS 
WHERE CLASS = ANY(SELECT S1.CLASS FROM CLASSES S1 WHERE S1.NUMGUNS>=ALL(SELECT S2.NUMGUNS FROM CLASSES S2 WHERE S1.BORE=S2.BORE))