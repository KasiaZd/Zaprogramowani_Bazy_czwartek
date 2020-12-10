CREATE trigger trigger1
on
produkty
AFTER INSERT, UPDATE, DELETE
AS 
print 'Działanie na tabeli produkt'


select * from zamowienia 

insert into produkty (id, nazwa, sku, CENA_JEDNOSTKOWA, typ_produktu) 
values (11, 'coca-cola 1l', 15237, 4.20, 'napoje')

 
update produkty set CENA_JEDNOSTKOWA = 4.35
where id = 11

ALter trigger trigger1
on
produkty
AFTER INSERT, UPDATE, DELETE
AS 
print 'Działanie na tabeli produkt zakończone sukcesem'



create trigger insert_do_zamowienia
on zamowienia

after INSERT 
as 
BEGIN 
	declare @id int,
			@id_adres int, 
			@wartosc decimal, 
			@data date, 
			@id_typ_dostawy int, 
			@id_platnosci int, 
			@uzytkownik_id int, 
			@nr_zam int
			set @id = (select max(id)+1 from zamowienia)
	
			insert into zamowienia (id, id_adres, wartosc, [data], ID_TYP_DOSTAWY, ID_PLATNOSCI, UZYTKOWNIK_ID, NUMER_ZAMOWIENIA) values 
			(@id, @id_adres, @wartosc, @data, @id_typ_dostawy, @id_platnosci, @uzytkownik_id, @nr_zam)
END
	



insert into zamowienia (id, id_adres, wartosc, [data], ID_TYP_DOSTAWY, ID_PLATNOSCI, UZYTKOWNIK_ID, NUMER_ZAMOWIENIA)
values(2, 2, 15, getdate(), 3, 2, 3, 2)

select * from ZAMOWIENIA z 


select current_value from sys.sequences s 






create trigger insert_do_zamow_produkt
on zamow_produkt

after INSERT 
as 
BEGIN 
	declare @id int,
			@id_zamowienie int, 
			@id_produkt int, 
			@ilosc int
			set @id = (select max(id)+1 from zamow_produkt)
	
			insert into zamow_produkt (id, id_zamowienie, id_produkt, ilosc) values 
			(@id, @id_zamowienie, @id_produkt, @ilosc)
END


select * from platnosci zp 

create trigger insert_do_platnosci
on platnosci

after INSERT 
as 
BEGIN 
	declare @id int,
			@typ varchar, 
			@wartosc decimal, 
			@posrednik varchar,
			@data date
			set @id = (select max(id)+1 from platnosci)
	
			insert into platnosci (id, typ, wartosc, posrednik, [data]) values 
			(@id, @typ, @wartosc, @posrednik, @data)
END

select * from ADRESY a 


create trigger insert_do_adresy
on adresy

after INSERT 
as 
BEGIN 
	declare @id int,
			@imie varchar, 
			@nazwisko varchar, 
			@ulica varchar,
			@miasto varchar,
			@kod_pocztowy varchar, 
			@numer_domu varchar, 
			@numer_lokalu int,
			@uzytkownik_id int
			set @id = (select max(id)+1 from adresy)
	
			insert into adresy (id, imie, nazwisko, ulica, miasto, kod_pocztowy, numer_domu, numer_lokalu, uzytkownik_id) values 
			(@id, @imie, @nazwisko, @ulica, @miasto, @kod_pocztowy,@numer_domu,  @numer_lokalu, @uzytkownik_id)
END

select * from UZYTKOWNIK u2 

create trigger insert_do_uzytkownik
on uzytkownik

after INSERT 
as 
BEGIN 
	declare @id int,
			@nazwa varchar, 
			@haslo varchar, 
			@slownik_pozycji_id int
			set @id = (select max(id)+1 from uzytkownik)
	
			insert into uzytkownik (id, nazwa, haslo, slownik_pozycji_id) values 
			(@id, @nazwa, @haslo, @slownik_pozycji_id)
END

select * from produkty



create trigger insert_do_produkty
on produkty

after INSERT 
as 
BEGIN 
	declare @id int,
			@nazwa varchar, 
			@sku int, 
			@cena_jednostkowa decimal,
			@typ_produktu varchar
			set @id = (select max(id)+1 from produkty)
	
			insert into produkty (id, nazwa, sku, cena_jednostkowa, typ_produktu) values 
			(@id, @nazwa, @sku, @cena_jednostkowa, @typ_produktu)
END

