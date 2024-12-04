CREATE TABLE Vraboten (
    ID INT PRIMARY KEY,
    ime VARCHAR(50),
    prezime VARCHAR(50),
    datum_r DATE,
    datum_v DATE,
    obrazovanie VARCHAR(50),
    plata INT,
    CONSTRAINT stepenObrazovanie CHECK (obrazovanie IN ('PhD','MSc','High School','BSc')),
    CONSTRAINT datumRaganje CHECK (datum_r < datum_v)
);