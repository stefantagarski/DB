-- Bankomat(ID, lokacija, datum, zaliha)

CREATE TABLE Bankomat (
    ID INT PRIMARY KEY,
    lokacija VARCHAR(50) UNIQUE,
    datum DATE,
    zaliha INT,
    CONSTRAINT zalihaBankomat CHECK (zaliha >= 0)
);