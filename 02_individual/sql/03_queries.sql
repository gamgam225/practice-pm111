-- 1. Все автомобили марки BMW
SELECT a.* FROM avtomobil a
JOIN marka m ON m.id = a.id_marki
WHERE m.nazvanie = 'BMW';

-- 2. Продажи за 2024 год с ФИО клиента
SELECT p.id, p.data_prodazhi, p.summa, k.fio
FROM prodazha p
JOIN klient k ON k.id = p.id_klienta
WHERE EXTRACT(YEAR FROM p.data_prodazhi) = 2024;

-- 3. Сумма продаж по сотрудникам
SELECT s.fio, SUM(p.summa) AS itogo
FROM prodazha p
JOIN sotrudnik s ON s.id = p.id_sotrudnika
GROUP BY s.fio
ORDER BY itogo DESC;
