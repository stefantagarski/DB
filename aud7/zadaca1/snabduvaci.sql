CREATE TABLE Snabduvaci (
s INT PRIMARY KEY,
ime_s VARCHAR(50) NOT NULL,
saldo INT CHECK (saldo > 0),
grad VARCHAR(20) DEFAULT 'Skopje',
); 