CREATE TABLE Proizvodi (
proiz INT,
vid INT,
ime_p VARCHAR(50) NOT NULL,
boja CHAR(5),
tezina INT,
grad_p VARCHAR(20) CHECK (grad_p IN ( 'London', 'Paris', 'Rome')),
CONSTRAINT proizvodi_PK PRIMARY KEY(proiz, vid)
);