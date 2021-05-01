--1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).

SELECT DISTINCT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId ASC,
total DESC;

--2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, but this time sorted first by total dollar amount (in descending order), and then by CustomerId (in ascending order).

SELECT DISTINCT InvoiceId, CustomerId, total
FROM invoices
ORDER BY total DESC,
CustomerId ASC;

-- 3. Compare the results of these two queries above. How are the results different when you switch the column you sort on first? (Explain it in your own words.)
--It gives the first priority to the customerid column in the column that I have sorted first. the second is in the priority total column

--4. Write a query to pull the first 10 rows and all columns from the invoices table that have a dollar amount of total greater than or equal to 10.

SELECT *
FROM invoices
WHERE total >= 10
LIMIT 10;

--5. Write a query to pull the first 5 rows and all columns from the invoices table that have a dollar amount of total less than 10.

SELECT *
FROM invoices
WHERE total < 10
LIMIT 5;

--6. Find all track names that start with 'B' and end with 's'.

SELECT name
FROM tracks
WHERE name LIKE 'B%s';

--7. Use the invoices table to find all information regarding invoices whose billing address is USA or Germany or Norway or Canada and invoice date is at any point in 2010, sorted from newest to oldest.

SELECT *
FROM invoices
WHERE BillingCountry IN ('USA', 'Germany', 'Norway', 'Canada') AND
InvoiceDate BETWEEN '2010-01-01' AND '2011-01-01'
ORDER BY InvoiceDate DESC;