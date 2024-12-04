CREATE TABLE Transakcija_shalter (
    ID INT PRIMARY KEY,
    ID_v INT FOREIGN KEY REFERENCES Shalterski_rabotnik(ID) ON DELETE SET NULL ON UPDATE CASCADE,
    MBR_k INT FOREIGN KEY REFERENCES Klient(MBR_k) ON DELETE CASCADE ON UPDATE CASCADE,
    MBR_k_s INT,
    broj INT,
    datum DATE,
    suma INT,
    tip VARCHAR(10),
    FOREIGN KEY (MBR_k_s, broj) REFERENCES Smetka(MBR_k, broj) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT datumTransakcija CHECK (NOT (datum >= '2020-12-30' AND datum <= '2021-01-14')),
    CONSTRAINT timTransakcija CHECK (tip IN ('isplata', 'uplata'))
);
