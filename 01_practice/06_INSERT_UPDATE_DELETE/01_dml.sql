INSERT INTO marka (nazvanie, strana) VALUES ('BMW', 'Германия');
INSERT INTO avtomobil (vin, god_vypuska, cvet, cena, id_marki)
VALUES ('WBA12345678901234', 2023, 'Чёрный', 4500000, 1);
UPDATE avtomobil SET cena = 4300000 WHERE id = 1;
DELETE FROM avtomobil WHERE id = 1;
