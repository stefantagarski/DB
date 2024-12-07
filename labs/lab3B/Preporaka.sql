CREATE TABLE Preporaka(
    ID INT PRIMARY KEY,  
    k_ime_od INT FOREIGN KEY REFERENCES Korisnik(k_ime),  
    k_ime_na INT FOREIGN KEY REFERENCES Korisnik(k_ime) ON DELETE CASCADE ON UPDATE CASCADE,  
    naslov INT DEFAULT 'Deleted', 
    datum DATE, 
    komentar VARCHAR(250),  
    ocena INT,  
    CONSTRAINT datumNaPreporaki CHECK (datum > '2022-12-07'), 
    CONSTRAINT ocenkaVrednosti CHECK (ocena IN (1, 2, 3, 4, 5)),  
    CONSTRAINT naslov_Zapis_FK FOREIGN KEY (naslov) REFERENCES Video_zapis(naslov) ON DELETE SET DEFAULT ON UPDATE CASCADE  
);
