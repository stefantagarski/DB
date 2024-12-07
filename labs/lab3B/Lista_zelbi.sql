-- Lista_zelbi(naslov*, k_ime*, ime*)

CREATE TABLE Lista_zelbi(
    naslov INT FOREIGN KEY REFERENCES Video_zapis(naslov) ON DELETE CASCADE ON UPDATE CASCADE,
    k_ime INT,
    ime INT,
    CONSTRAINT ListaZelbi_FK FOREIGN KEY (k_ime, ime) REFERENCES Profil(k_ime, ime) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT ListaZelbi_PK PRIMARY KEY (naslov, k_ime, ime)
);