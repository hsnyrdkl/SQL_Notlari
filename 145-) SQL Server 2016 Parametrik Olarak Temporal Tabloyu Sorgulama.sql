--SQL Server 2016 Parametrik Olarak Temporal Tabloyu Sorgulama

--SELECT * FROM DERSKAYITLARI DK INNERJOIN DERSKAYITLARILOG DKL ON DK.DERSID=DKL.DERSID WHERE DAY(DKL.STARTDATE) >= DAY(CAST('TARIH' AS DATETIME2)) OR DAY(DKL.ENDDATE) <= DAY(CAST('2016-09-26 06:23:25.8195851' AS DATETIME2))

--BU SEKILDE ILISKISEL TABLOLAR ILE DE SORGULAMALAR YAPABILIRIZ. LAKIN TABLOMUZU HISTORY TABLOSUNUN PERIYODUNA OZEL BIR SEKILDE DE RAHATCA SORGULATABILIRIZ.


--########################
--AS OF<DATETIME>
--MANTIKSAL SORGUSU : 'STARTDATE >= DATETIME AND ENDDATE <= DATETIME' SEKLINDEDIR.
--########################

SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME AS OF '2016-09-26 06:23:25.8195851'
WHERE DERSID = 3 


--########################
--FROM <START_DATETIME> TO <END_DATETIME>
--MANTIKSAL SORGUSU : 'START_DATETIME >= DATETIME AND END_DATETIME <= DATETIME' SEKLINDEDIR.
--########################

SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME FROM '2016-09-26 06:23:25.8195851' TO '2016-09-26 07:47:12.1231232'
WHERE DERSID = 3 

--########################
--BETWEEN <START_DATETIME> AND <END_DATETIME>
--MANTIKSAL SORGUSU : 'START_DATETIME >= DATETIME AND END_DATETIME <= DATETIME' SEKLINDEDIR.
--########################


--########################
--CONTAINED IN(START_DATETIME,END_DATETIME)
--MANTIKSAL SORGUSU : 'START_DATETIME >= DATETIME AND END_DATETIME <= DATETIME' SEKLINDEDIR.
--########################
