-- Transakcija_bankomat(ID, MBR_k_s*, broj*, ID_b*, datum, suma).

CREATE TABLE Transakcija_bankomat(
    ID INT PRIMARY KEY,
    MBR_k_s INT ,
    broj INT,
    ID_b INT DEFAULT -1,
    datum DATE,
    suma INT,
    CONSTRAINT TransBank_FK FOREIGN KEY (ID_b) REFERENCES Bankomat(ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT datum_Izvrsuvanje1 CHECK (NOT (datum >= '2020-12-30' AND datum <= '2021-10-14')),
      FOREIGN KEY (MBR_k_s, broj) REFERENCES Smetka(MBR_k, broj) ON DELETE CASCADE ON UPDATE CASCADE
);
