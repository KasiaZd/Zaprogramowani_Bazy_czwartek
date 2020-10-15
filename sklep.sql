CREATE TABLE USER(
	ID NUMBER PRIMARY KEY NOT NULL,
	NAZWA VARCHAR(50) NOT NULL,
	HASLO VARCHR(50) NOT NULL,
	SLOWNIK_POZYCJI_ID NUMBER NOT NULL
)
CREATE TABLE SLOWNIK_POZYCJI(
	ID NUMBER(40) PRIMARY KEY NOT NULL,
	POZYCJA VARCHAR(50) NOT NULL UNIQUE
)
 
CREATE TABLE ADRESY(
	ID NUMBER PRIMARY KEY NOT NULL,
	IMIE VARCHAR(50) NOT NULL,
	NAZWISKO VARCHAR(50) NOT NULL,
	ULICA VARCHAR(100) NOT NULL,
	MIASTO VARCHAR(50) NOT NULL
	KOD_POCZTOWY VARCHAR(6) NOT NULL,
	NUMER_DOMU VARCHAR(4) NOT NULL,
	NUMER_LOKALU VARCHAR(4) 
)
 CREATE TABLE PRODUKTY(
	ID NUMBER PRIMARY KEY NOT NULL, 
	NAZWA VARCHAR(250) NOT NULL,
	SKU NUMBER NOT NULL, 
	CENA_JEDNOSTKOWA NUMBER(5,2) NOT NULL 
)

CREATE TABLE ZAMOWIENIA(
	ID NUMBER PRIMARY KEY NOT NULL,
	ID_ADRES NUMBER NOT NULL, 
	WARTOSC NUMBER(10,2) NOT NULL,
	DATA DATE NOT NULL,
	ID_TYP_DOSTAWY NUMBER NOT NULL, 
	ID_PLATNOSCI NUMBER
)

CREATE TABLE TYP_DOSTAWY(
	ID NUMBER PRIMARY KEY NOT NULL, 
	WARTOSC VARCHAR(50) NOT NULL 
)

CREATE TABLE PLATNOSCI(
	ID NUMBER PRIMARY KEY NOT NULL, 
	TYP VARCHAR(50) NOT NULL,
	WARTOSC  NUMBER(10,2) NOT NULL, 
	POSREDNIK VARCHAR(2000) NOT NULL,
	DATA DATE)
CREATE TABLE ZAMOW_PRODUKT(
	ID NUMBER PRIMARY KEY NOT NULL,
	ID_ZAMOWIENIE NUMBER NOT NULL, 
	ID_PRODUKT NUMBER NOT NULL,
	ILOSC NUMBER NOT NULL
)

