SELECT s.fio, COUNT(*) AS kolvo, SUM(p.summa) AS itogo
FROM prodazha p
JOIN sotrudnik s ON s.id = p.id_sotrudnika
GROUP BY s.fio
ORDER BY itogo DESC;
