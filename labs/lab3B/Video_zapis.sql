--Video_zapis(naslov, jazik, vremetraenje, datum_d, datum_p)

CREATE TABLE Video_zapis(
    naslov INT PRIMARY KEY,
    jazik VARCHAR(50) DEFAULT 'English',
    vremetraenje INT,
    datum_d DATE,
    datum_p DATE,
    CONSTRAINT videoDatum CHECK (datum_d >= datum_p)
);