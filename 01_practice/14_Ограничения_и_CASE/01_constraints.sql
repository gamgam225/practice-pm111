ALTER TABLE avtomobil ADD CONSTRAINT chk_cena CHECK (cena > 0);
ALTER TABLE klient ADD CONSTRAINT uq_klient_email UNIQUE (email);

SELECT fio,
       CASE
           WHEN cena > 5000000 THEN 'Премиум'
           WHEN cena > 2000000 THEN 'Средний'
           ELSE 'Бюджет'
       END AS kategoria
FROM avtomobil;
