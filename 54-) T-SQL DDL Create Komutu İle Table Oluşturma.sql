﻿--T-SQL DDL Create Komutu İle Table Oluşturma

USE ORNEKVERITABANI

CREATE TABLE ORNEKTABLO
(
KOLON1 INT,
KOLON2 NVARCHAR(MAX),
KOLON3 MONEY
)

--EĞER KOLON ADLARINDA BOSLUK VARSA, KOSELI PARANTEZ ICINDE YAZILMALIDIR.

CREATE TABLE ORNEKTABLO2
(
[KOLON 1] INT,
[KOLON 2] NVARCHAR(MAX),
[KOLON 3] MONEY
)