-- Find Hermione's cats
-- Your code here

-- Find All the Toys for Hermione's cats
-- Your code here
SELECT owners.first_name, cats.name 
FROM cats
JOIN cat_owners
JOIN owners
ON (owners.id = cat_owners.owner_id)
AND (cats.id = cat_owners.cat_id)
WHERE owners.first_name = 'Hermione';

SELECT cats.name, toys.name, owners.first_name
FROM cats
JOIN toys
JOIN cat_owners
JOIN owners
ON (cats.id = toys.cat_id)
AND (owners.id = cat_owners.owner_id)
AND (cats.id = cat_owners.cat_id)
WHERE owners.first_name = 'Hermione';


SELECT toys.name
FROM toys
JOIN cat_owners 
ON (cat_owners.cat_id = toys.cat_id)
JOIN owners
ON (owners.id = cat_owners.owner_id)
WHERE owners.first_name = "Hermione";
