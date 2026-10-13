-- Создание таблиц для предметной области «Автосалон»
CREATE TABLE marka (
    id SERIAL PRIMARY KEY,
    nazvanie VARCHAR(100) NOT NULL,
    strana VARCHAR(100)
);

CREATE TABLE avtomobil (
    id SERIAL PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    god_vypuska INT,
    cvet VARCHAR(50),
    cena NUMERIC(12,2),
    id_marki INT NOT NULL REFERENCES marka(id)
);

CREATE TABLE klient (
    id SERIAL PRIMARY KEY,
    fio VARCHAR(200) NOT NULL,
    telefon VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    adres VARCHAR(300)
);

CREATE TABLE sotrudnik (
    id SERIAL PRIMARY KEY,
    fio VARCHAR(200) NOT NULL,
    dolzhnost VARCHAR(100) NOT NULL,
    telefon VARCHAR(20)
);

CREATE TABLE prodazha (
    id SERIAL PRIMARY KEY,
    data_prodazhi DATE NOT NULL,
    summa NUMERIC(12,2),
    id_avtomobilya INT NOT NULL REFERENCES avtomobil(id),
    id_klienta INT NOT NULL REFERENCES klient(id),
    id_sotrudnika INT NOT NULL REFERENCES sotrudnik(id)
);
