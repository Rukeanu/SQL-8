-- Session #1

BEGIN;
UPDATE pizzeria SET rating = 5 WHERE pizzeria.id = 1;
UPDATE pizzeria SET rating = 5 WHERE pizzeria.id = 2;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

-- Session #2

BEGIN;
UPDATE pizzeria SET rating = 4 WHERE pizzeria.id = 2;
UPDATE pizzeria SET rating = 4 WHERE pizzeria.id = 1;
COMMIT;
