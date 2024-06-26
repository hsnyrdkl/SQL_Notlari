﻿--T-SQL Transaction Giriş

--BIRDEN COK ISLEMIN BIR ARADA YAPILDIGI DURUMLARDA, EGER PARCAYI OLUSTURAN ISLEMLERDEN HERHANGI BIRINDE BIR SORUN OLURSA, TUM ISLEMI IPTAL ETTIRMEYE YARAR.

--ORNEGIN, KREDI KARTI ILE ALISVERIS ISLEMLERINDE BIR TRANSACTION ISLEMI VARDIR. SIZ MARKETTEN URUN ALIRKEN SIZIN HESABINIZDAN PARA DUSULECEK, MARKETIN HESABINA PARA AKTARILACAKTIR. BU ISLEMDE HATA OLMAMASI GEREKIR VE BUNDAN DOLAYI BU ISLEM BIR TRANSACTION BLOGUNDA GERCEKLESTIRILMELIDIR. BU ESNADA HERHANGI BIR SORUN OLURSA BUTUN ISLEMLER TRANSACTION TARAFINDAN IPTAL EDILEBILMEKTEDIR. 

--BEGIN TRAN VEYA BEGIN TRANSACTION --> TRANSACTION ISLEMINI BASLATIR.
--COMMIT TRAN --> TRANSACTION ISLEMINI BASARIYLA SONA ERDIRIR. ISLEM(LER)I GERCEKLESTIRIR.
--ROLLBACK TRAN --> TRANSACTION ISLEMINI IPTAL EDER. ISLEM(LER)I GERI ALIR.

--COMMIT TRAN YERINE SADECE COMMIT YAZILABILIR.
--ROLLBACK TRAN YERINE SADECE ROLLBACK YAZILABILIR.

--NORMALDE DEFAULT OLARAK HER SEY, BIZ BU YAPILARI KULLANMASAK BILE BEGIN TRAN ILE BASLAYIP, COMMIT TRAN ILE BITER.

