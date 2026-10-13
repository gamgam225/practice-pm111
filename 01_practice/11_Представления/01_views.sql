CREATE VIEW v_prodazhi_klientov AS
SELECT p.id, p.data_prodazhi, p.summa, k.fio AS klient, a.vin
FROM prodazha p
JOIN klient k ON k.id = p.id_klienta
JOIN avtomobil a ON a.id = p.id_avtomobilya;
