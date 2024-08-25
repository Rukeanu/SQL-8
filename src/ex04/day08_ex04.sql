-- Session #1

BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';
SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';
COMMIT;

SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';

-- Session #2

BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE pizzeria
SET rating = 3.0
WHERE pizzeria.name = 'Pizza Hut';
COMMIT;

SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';