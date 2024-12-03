CREATE TABLE ponudi (
    p# NUMERIC(5) PRIMARY KEY,
    s# NUMERIC(5) REFERENCES snabduvachi(s#) ON DELETE CASCADE ON UPDATE CASCADE,
    pr# NUMERIC(5),
    v# NUMERIC(5),
    kolicina_nar NUMERIC,
    datum_nar DATE,
    kolicina_isp NUMERIC,
    datum_isp DATE,
    CONSTRAINT ponudi_FK FOREIGN KEY (pr#, v#) REFERENCES ace(proiz#, vid#) 
    ON DELETE SET NULL ON UPDATE CASCADE,
    CHECK (kolicina_isp <= kolicina_nar)
);
