﻿--T-SQL DBCC Checkident Fonksiyonu İle Identity Kolonuna Müdahale Etme

USE Northwind
GO

DBCC CHECKIDENT(Personeller__)
--ASAGIDAKI QUERY'DE BELIRTILEN TABLODA IDENTITY KOLONU RESEED EDILIR VE 27DEN DEVAM EDECEK SEKILDE SET EDILIR.
--BIR SONRAKI GIRILECEK KAYITTA IDENTITY 28 OLUR.
DBCC CHECKIDENT(Personeller__,RESEED,27)
