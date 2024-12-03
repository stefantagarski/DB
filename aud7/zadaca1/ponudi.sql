CREATE TABLE Ponudi (
p NUMERIC(5) PRIMARY KEY,
s INT REFERENCES Snabduvaci(s)
ON DELETE CASCADE ON UPDATE CASCADE,
pr INT,
v INT,
kolicina_nar INT,
datum_nar DATE,
kolicina_isp INT,
datum_isp DATE,
CHECK (kolicina_isp <= kolicina_nar),
CONSTRAINT ponudi_FK FOREIGN KEY (pr, v)
REFERENCES Proizvodi(proiz,vid)
ON DELETE SET NULL ON UPDATE CASCADE
);