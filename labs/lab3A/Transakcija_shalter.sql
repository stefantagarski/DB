-- Transakcija_shalter(ID, ID_v*, MBR_k*, MBR_k_s*, broj*, datum, suma, tip)

CREATE TABLE Transakcija_shalter(
    ID INT PRIMARY KEY,
    ID_v INT FOREIGN KEY REFERENCES Shalterski_Rabotnik(ID) ON DELETE SET NULL ON UPDATE CASCADE,
    MBR_k INT FOREIGN KEY REFERENCES Klient(MBR_k) ON DELETE CASCADE ON UPDATE CASCADE,
    MBR_k_s INT,
    broj INT,
    datum DATE,
    suma INT,
    tip VARCHAR(50),
    CONSTRAINT TransSHalter_FK FOREIGN KEY (MBR_k_s, broj) REFERENCES Smetka(MBR_k, broj) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT datum_Izvrsuvanje CHECK (NOT (datum >= '2020-12-30' AND datum <= '2021-10-14')),
    CONSTRAINT tip_Transakcija CHECK (tip IN ('uplata', 'isplata'))
);
