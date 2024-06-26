﻿--SQL Server 2016 Row Level Security Özelliğinin Kullanımı

CREATE DATABASE YENILIKLER
GO
USE YENILIKLER
GO
CREATE TABLE SATISLAR
(
	SATISID INT PRIMARY KEY IDENTITY(1,1),
	URUN NVARCHAR(MAX),
	ADET INT,
	KULLANICI NVARCHAR(MAX)
)
GO
INSERT SATISLAR VALUES
('A_URUNU',5,'HASAN'),
('B_URUNU',6,'TAHA'),
('C_URUNU',2,'OMER'),
('D_URUNU',1,'HASAN'),
('E_URUNU',2,'TAHA'),
('F_URUNU',6,'OMER'),
('G_URUNU',3,'HASAN'),
('H_URUNU',8,'TAHA'),
('I_URUNU',9,'OMER')


--KULLANICILARI OLUSTURALIM -->
CREATE USER HASAN WITHOUT LOGIN
CREATE USER TAHA WITHOUT LOGIN
CREATE USER OMER WITHOUT LOGIN

--BU KULLANICILARA SATISLAR TABLOSUNDA SELECT YETKISI VERELIM -->
GRANT SELECT ON SATISLAR TO HASAN	
GRANT SELECT ON SATISLAR TO TAHA	
GRANT SELECT ON SATISLAR TO OMER

--ROW LEVEL SECURITY KULLANABILMEK ICIN INLINE TABLE VALUE FUNCTION OLUSTURMALIYIZ.
CREATE FUNCTION ROWLEVELSECURITYFUNCTION (@KULLANICIADI AS SYSNAME)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN SELECT 1 ROWLEVELRESULT
WHERE @KULLANICIADI = USER_NAME()

--SIMDI BU FONKSIYONU, BIRAZDAN OLUSTURACAGIMIZ SECURITY POLICY (GUVENLIK POLITIKASI) ICIN FILTER PREDICATE OLARAK EKLIYORUZ. YANI UZUN LAFIN KISASI FILTRE OLARAK AYARLIYORUZ. 
CREATE SECURITY POLICY GUVENLIKFILTRESI
ADD FILTER PREDICATE dbo.ROWLEVELSECURITYFUNCTION(KULLANICI)
ON dbo.SATISLAR
WITH (STATE = ON);

--DIKKAT!!!!!
--KULLANILAN TUM YAPIDA SEMA ADLARINI (.dbo VS.) UNUTMA 

EXEC AS USER = 'TAHA'
SELECT * FROM SATISLAR
REVERT