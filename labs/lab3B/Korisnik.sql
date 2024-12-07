-- Korisnik(k_ime, ime, prezime, tip, pretplata, datum_reg, tel_broj, email)

CREATE TABLE Korisnik(
    k_ime INT PRIMARY KEY,
    ime VARCHAR(50),
    prezime VARCHAR(50),
    tip VARCHAR(50),
    pretplata VARCHAR(50),
    datum_reg DATE,
    tel_broj VARCHAR(12),
    email VARCHAR(50),
    CONSTRAINT datumRegistracijaKorisnik CHECK ((datum_reg >= '2023-01-01' AND datum_reg <= '2024-12-31'))
);