1) SELECT NAME FROM AUTHORS;
2)SELECT NAME , EMAIL FROM CUSTOMERS WHERE JOINDATE >'2023-02-01';

3)SELECT TITLE , GENRE FROM BOOKS WHERE GENRE='Fantasy';

4)SELECT SUM(STOCK)AS TOTAL_BOOKS FROM BOOKS;

5)SELECT SUM(B.PRICE*O.QUANTITY)AS TOTAL_REVENUE
FROM ORDERS AS O
JOIN BOOKS AS B
ON B.BOOKID=O.BOOKID;

OR 5)SELECT SUM(TOTALPRICE) FROM ORDERS;


6)SELECT C.NAME, O.ORDERID,O.QUANTITY,O.ORDERDATE ,O.TOTALPRICE
FROM ORDERS AS O
JOIN CUSTOMERS AS C
ON C.CUSTOMERID=O.CUSTOMERID
WHERE C.NAME='Alice Johnson';
  --OTHER METHOD
SELECT ORDERDATE,QUANTITY,TOTALPRICE FROM ORDERS WHERE CUSTOMERID=1;

7) SELECT BOOKID,TITLE,PRICE FROM BOOKS*/
ORDER BY PRICE DESC
LIMIT 1;

8) SELECT * FROM Books WHERE Stock<50;

9)SELECT A.NAME , B.TITLE
FROM AUTHORS AS A
JOIN BOOKS AS B
ON A.AUTHORID=B.AUTHORID;


10)SELECT O.ORDERID,O.ORDERDATE,O.QUANTITY,C.NAME,B.TITLE
FROM ORDERS AS O
JOIN CUSTOMERS AS C
ON O.CUSTOMERID=C.CUSTOMERID
JOIN BOOKS AS B
ON O.BOOKID = B.BOOKID;

11) SELECT O.QUANTITY,C.NAME
FROM CUSTOMERS AS C
JOIN ORDERS AS O
ON C.CUSTOMERID=O.CUSTOMERID
ORDER BY QUANTITY;

OR11)SELECT C.NAME,COUNT(O.ORDERID)
FROM CUSTOMERS AS C
LEFT JOIN ORDERS AS O
ON C.CUSTOMERID=O.CUSTOMERID
GROUP BY C.CUSTOMERID;

12) SELECT TITLE,GENRE,AVG(PRICE) FROM BOOKS
WHERE GENRE='Fiction';

13)SELECT A.NAME,B.TITLE,SUM(B.STOCK)AS TOTAL
FROM AUTHORS AS A
JOIN BOOKS AS B
ON A.AUTHORID=B.AUTHORID
GROUP BY A.AUTHORID
ORDER BY TOTAL desc
LIMIT 1;

14)SELECT NAME ,BIRTHYEAR
FROM AUTHORS
WHERE BIRTHYEAR<1950;

15)SELECT NAME , COUNTRY
FROM AUTHORS
WHERE COUNTRY='United Kingdom';

16)SELECT B.TITLE,O.ORDERID,O.QUANTITY
FROM BOOKS AS B
JOIN ORDERS AS O
ON B.BOOKID=O.BOOKID
WHERE QUANTITY>1;

17)SELECT B.TITLE,O.ORDERID,O.QUANTITY
FROM ORDERS AS O
JOIN BOOKS AS B
ON O.BOOKID=B.BOOKID
ORDER BY O.QUANTITY DESC
LIMIT 1;

18)SELECT TITLE, ROUND((PRICE*STOCK),1)AS TOTAL
FROM BOOKS;

19)SELECT C.NAME,O.ORDERID,O.TOTALPRICE
FROM CUSTOMERS AS C
JOIN ORDERS AS O
ON O.CUSTOMERID=C.CUSTOMERID
ORDER BY TOTALPRICE DESC
LIMIT 1;

OR19)SELECT C.NAME,O.ORDERID,O.TOTALPRICE
FROM CUSTOMERS AS C
JOIN ORDERS AS O
ON O.CUSTOMERID=C.CUSTOMERID
WHERE O.TOTALPRICE=(SELECT MAX(TOTALPRICE) AS PRICE FROM ORDERS);

20)SELECT TITLE FROM BOOKS AS B WHERE B.BOOKID  NOT IN(SELECT DISTINCT(BOOKID)FROM ORDERS);


