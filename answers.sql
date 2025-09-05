-- =============================
-- Use the salesdb database
-- =============================
USE salesdb;

-- =============================
-- Question 1 
-- Get employee details with office info using INNER JOIN
-- =============================

SELECT 
    e.firstName, e.lastName, e.email, e.officeCode
FROM
    employees AS e
        INNER JOIN
    offices AS o ON e.officeCode = o.officeCode;

    
-- =============================
-- Question 2 
-- Get product details with product line info using LEFT JOIN
-- =============================
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- =============================
-- Question 3 
-- Get order details with customer info using RIGHT JOIN
-- (Limit to first 10 orders)
-- =============================
SELECT 
    o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM
    customers c
        RIGHT JOIN
    orders o ON c.customerNumber = o.customerNumber
LIMIT 10;
    