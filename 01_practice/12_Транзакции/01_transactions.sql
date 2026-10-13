BEGIN;
UPDATE avtomobil SET cena = cena - 100000 WHERE id = 1;
INSERT INTO prodazha (data_prodazhi, summa, id_avtomobilya, id_klienta, id_sotrudnika)
VALUES (CURRENT_DATE, 4400000, 1, 1, 1);
COMMIT;
