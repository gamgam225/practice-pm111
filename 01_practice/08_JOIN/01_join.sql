SELECT a.vin, m.nazvanie
FROM avtomobil a
JOIN marka m ON m.id = a.id_marki;

SELECT p.id, k.fio, s.fio AS sotrudnik
FROM prodazha p
JOIN klient k ON k.id = p.id_klienta
JOIN sotrudnik s ON s.id = p.id_sotrudnika;
