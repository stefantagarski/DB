--Premium_korisnik(k_ime*, datum, procent_popust)

CREATE TABLE Premium_korisnik(
    k_ime INT PRIMARY KEY,
    datum DATE,
    procent_popust DECIMAL DEFAULT 0.20,
    CONSTRAINT Pkorisnik_FK FOREIGN KEY (k_ime) REFERENCES Korisnik(k_ime) ON DELETE CASCADE ON UPDATE CASCADE
);