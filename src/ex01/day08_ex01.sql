-- Session #1

BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';
UPDATE pizzeria
SET rating = 4
WHERE pizzeria.name = 'Pizza Hut';
COMMIT;

SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';

-- Session #2

BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';
UPDATE pizzeria
SET rating = 3.6
WHERE pizzeria.name = 'Pizza Hut';
COMMIT;

SELECT *
FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';