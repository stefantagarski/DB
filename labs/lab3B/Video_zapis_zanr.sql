-- Video_zapis_zanr(naslov*, zanr)

CREATE TABLE Video_zapis_zanr(
    naslov INT FOREIGN KEY REFERENCES Video_zapis(naslov) ON DELETE CASCADE ON UPDATE CASCADE,
    zanr INT,
    CONSTRAINT videoZapisZanr_PK PRIMARY KEY (naslov, zanr)
);