--T-SQL Stored Procedures - Genel Özellikleri

--###############################
--GENEL OZELLIKLERI
--NORMAL SORGULARDAN DAHA HIZLI CALISIRLAR.
--CUNKU NORMAL SORGULAR EXECUTE EDILIRKEN ''EXECUTE PLAN'' ISLEMI YAPILIR. BU ISLEM SIRASINDA HANGI TABLOLARDAN VERI CEKILECEK, HANGI KOLONLARDAN GELECEK, BUNLAR NEREDE KULLANILACAK VS. ISLEMLER YAPILIR. BIR SORGU HER CALISTIRILDIGINDA BU ISLEMLER TEKRAR TEKRAR YAPILIR. FAKAT SORGU STORED PROCEDURE OLARAK CALISTIRILIRSA BU ISLEM SADECE BIR KERE YAPILIR VE O DA ILK SORGULAMA ESNASINDADIR. DIGER CALISTIRMALARDA BU ISLEMLER YAPILMAZ. BUNDAN DOLAYI HIZ VE PERFORMANS ARTAR.
--ICERISINDE SELECT-INSERT-UPDATE-DELETE ISLEMLERI YAPILABILIR.
--IC ICE KULLANILABILIR.
--ICLERINDE FONKSIYON OLUSTURULABILIR.
--SORGULARIN DISARIDAN ALACAGI DEGERLER PARAMETRE OLARAK STORED PROCEDURE'LARA GECIREBILECEGINDEN DOLAYI, SORGULARIN ''SQL INJECTION'' YEMELERINI DE ENGELLEMIS OLURUZ. BU YONLERIYLE DAHA GUVENLIDIRLER.
--STORED PROCEDURE FIZIKSEL BIR VERITABANI NESNESIDIR. BU NEDENLE CREATE KOMUTU ILE OLUSTURULUR.
--''PROGRAMMABILITY --> STORED PROCEDURES'' DIZININDEN ULASILABILIR.

--PROTOTIP
--CREATE PROC YA DA PROCEDURE [ISIM]
--(
--VAR ISE PARAMETRELER
--)
--AS
--YAZILACAK SORGULAR, KODLAR, SARTLAR, FONKSIYONLAR, KOMUTLAR VS.