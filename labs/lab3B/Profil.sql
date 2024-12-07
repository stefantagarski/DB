--Profil(k_ime*, ime, datum)

CREATE TABLE Profil(
    k_ime INT,
    datum DATE,
    ime INT,
    CONSTRAINT Profil_FK FOREIGN KEY (k_ime) REFERENCES Korisnik(k_ime) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Profil_PK PRIMARY KEY (k_ime , ime)
);