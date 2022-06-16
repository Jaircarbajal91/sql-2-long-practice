-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
-- Your code here
UPDATE toys SET name = 'Pooky'
WHERE name = 'Cheetos';

SELECT cats.name, toys.name
FROM cats
JOIN toys
ON (cats.id = toys.cat_id)
WHERE cats.name = 'Garfield';
