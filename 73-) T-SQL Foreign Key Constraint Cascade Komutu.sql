--T-SQL Foreign Key Constraint Cascade Komutu
USE Northwind

--##CASCADE
--ANA TABLODAKI KAYIT SILINDIGINDE VEYA GUNCELLENDIGINDE, ILISKILI KOLONDAKI KARSILIGI DA OTOMATIK OLARAK SILMEK VEYA GUNCELLEMEK ICIN KULLANILIR.

ALTER TABLE OGRENCILER
ADD CONSTRAINT FK_OGRENCI_DERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE CASCADE
ON UPDATE CASCADE
	