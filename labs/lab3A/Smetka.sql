-- Smetka(MBR_k*, broj, valuta, saldo)

CREATE TABLE Smetka(
    MBR_k INT FOREIGN KEY REFERENCES Klient(MBR_k) ON DELETE CASCADE ON UPDATE CASCADE,
    broj INT,
    valuta INT,
    saldo INT,
    PRIMARY KEY (MBR_k, broj)
);