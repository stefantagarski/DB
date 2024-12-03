CREATE TABLE AdresiDostava(
    narachkaID INT,
    adresa VARCHAR(100),
    PRIMARY KEY (narachkaID, adresa),
    FOREIGN KEY (narachkaID) REFERENCES Narachka(ID)
);