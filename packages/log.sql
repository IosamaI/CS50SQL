/* At what type of address did the Lost Letter end up?:
At what address did the Lost Letter end up?:*/

-- *** The Lost Letter ***
 SELECT * FROM addresses
WHERE address = '900 Somerville Avenue' OR address LIKE '2 fin%';

SELECT * FROM scans
WHERE package_id IN ( SELECT  id
FROM packages
WHERE from_address_id =(
SELECT id  FROM addresses
WHERE address = '900 Somerville Avenue' ) AND to_address_id = (
    SELECT id FROM addresses
WHERE address LIKE '2 Fin%')
);

-- *** The Devious Delivery ***
SELECT * FROM packges 
WHERE from_address_id IS NULL

SELECT * FROM addresses 
WHERE id =348;

-- *** The Forgotten Gift ***

