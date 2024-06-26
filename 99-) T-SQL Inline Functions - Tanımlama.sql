﻿--T-SQL Inline Functions - Tanımlama


--#############################
--INLINE FUNCTIONS 
--GERIYE BIR DEGER DEGIL TABLO GONDEREN FONKSIYONLARDIR.
--GERIYE TABLO GONDERECEGI ICIN BU FONKSIYONLAR CALISTIRILIRKEN SANKI BIR TABLODAN SORGU CALISTIRILIR GIBI CALISTIRILIRLAR.
--BU YONLEROYLE VIEWLARA BENZERLER. VIEW ILE YAPILAN ISLEMLER INLINE FONKSIYONLAR ILE YAPILABILIR.
--GENELLIKLE VIEWLE BENZER ISLEMLER YAPILACAK ISE, VIEW KULLANILMASI ONERILIR.

--FONKSIYON TANIMLAMA
--INLINE FONKSIYONLARA TANIMLANDIKTAN SONRA, ''PROGRAMMABILITY --> FUNCTIONS --> TABLE-VALUED FUNCTIONS'' DIZININDEN ULASILABILIR.
--!!!DIKKAT!!
--INLINE FUNCTION OLUSTURULURKEN BEGIN VE END YAPISI KULLANILMAZ.
CREATE FUNCTION fc_GONDER(@AD NVARCHAR(20),@SOYAD NVARCHAR(30))
RETURNS TABLE
AS
RETURN SELECT Adi,SoyAdi FROM Personeller WHERE Adi=@AD AND SoyAdi=@SOYAD

