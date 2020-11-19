insert into ADRESY  (id, imie, nazwisko, ulica, miasto, KOD_POCZTOWY, NUMER_DOMU, NUMER_LOKALU, uzytkownik_id) values (2,'Szymon', 'Kowalski', 
'Kwiatowa', 'Bełchatów', '97-400', 14, null, 3)
insert into ADRESY  (id, imie, nazwisko, ulica, miasto, KOD_POCZTOWY, NUMER_DOMU, uzytkownik_id) values (3,'Jolanta', 'Bednarek', 
'Wojska Polskiego', 'Bełchatów', '97-400', 23, 4)

select * from ADRESY a 

SELECT ID, NAZWA, HASLO, SLOWNIK_POZYCJI_ID
FROM sklep.dbo.UZYTKOWNIK;

insert into UZYTKOWNIK (id, nazwa, HASLO, SLOWNIK_POZYCJI_ID) values (5, 'eeeewelina', 'jestemSpoko', 3)


insert into ADRESY  (id, imie, nazwisko, ulica, miasto, KOD_POCZTOWY, NUMER_DOMU, uzytkownik_id) values (4,'Ewelina', 'Koniecpolska', 
'Piekarska', 'Toruń', '88-300', 15, 5)

select * from ZAMOWIENIA z 

insert into ZAMOWIENIA (id, ID_ADRES, WARTOSC, data, ID_TYP_DOSTAWY, ID_PLATNOSCI)
values(1, 1, 13, '2020-10-29 17:44:57', 2, 1)

insert into ZAMOW_PRODUKT (id, ID_ZAMOWIENIE, ID_PRODUKT, ilosc) values (1, 1, 2, 2),
																		(2, 1, 4, 2),
																		(3, 1, 3, 1)


					select getdate() 													select 2*3.4 + 2*2+ 2.2
																		
select * from PLATNOSCI p 

select * from PRODUKTY p 
select * from ZAMOWIENIA z 

select * from PLATNOSCI p2 
insert into PLATNOSCI (id, typ, WARTOSC, POSREDNIK , [DATA])
values(1, 'przelew', 13, 'eService Polska', '2020-10-29 17:44:57')





select u.nazwa, u.id, a.imie, a.nazwisko, a.uzytkownik_id 
from UZYTKOWNIK u 
join ADRESY a on a.uzytkownik_id = u.ID 










