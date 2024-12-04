-- Klient(MBR_k, ime, prezime, adresa, datum)

CREATE TABLE Klient (
    MBR_k INT PRIMARY KEY,
    ime VARCHAR(50),
    prezime VARCHAR(50),
    adresa VARCHAR(50) DEFAULT 'Ne e navedena',
    datum DATE
)