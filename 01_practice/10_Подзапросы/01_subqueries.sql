SELECT * FROM avtomobil
WHERE cena > (SELECT AVG(cena) FROM avtomobil);

SELECT fio FROM klient
WHERE id IN (SELECT id_klienta FROM prodazha WHERE summa > 5000000);
