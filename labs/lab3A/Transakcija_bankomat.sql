-- Transakcija_bankomat(ID, MBR_k_s*, broj*, ID_b*, datum, suma).

CREATE TABLE Transakcija_bankomat(
    ID INT PRIMARY KEY,
    MBR_k_s INT,
    broj INT,
    ID_b INT DEFAULT -1,
    datum DATE,
    suma INT,
    FOREIGN KEY (MBR_k_s, broj) REFERENCES Smetka(MBR_k, broj) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_b) REFERENCES Bankomat(ID) ON DELETE SET DEFAULT ON UPDATE CASCADE
);