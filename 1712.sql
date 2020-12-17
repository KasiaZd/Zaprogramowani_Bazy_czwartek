ALTER  FUNCTION Imiona
(@zmienna VARCHAR(200)) 
RETURNS VARCHAR(200)
AS 

BEGIN 
DECLARE 
@imie VARCHAR(200) 

set @imie = ' '


return @imie;

END


exec imiona ' '


alter function tekst
(@tekst varchar(200))
returns varchar(200)
as
begin
	set @tekst = ''
	return @tekst;
end


exec tekst 'Nazywam sie Kasia'


alter  FUNCTION Imie_z_bazy
(@zmienna VARCHAR(200) = 'Bechatów' ) 
RETURNS VARCHAR(200)
AS 

BEGIN 
DECLARE 
@imie VARCHAR(200) 

set @imie = 'Jolanta'
select @imie = @imie + IMIE from  ADRESY a where MIASTO = @zmienna;

return @imie;

END


select dbo.Imie_z_bazy(Imie) from ADRESY a 

exec Imie_z_bazy 'Zielona Góra' 


select * from adresy 


select imie, nazwisko, 3+2 as 'wynik' from ADRESY a 


select imie, nazwisko, numer_domu + uzytkownik_id 'wynik' from adresy


select imie, nazwisko, NUMER_lokalu 'brak danych' from adresy 

select imie, nazwisko, isnull(NUMER_lokalu, 'brak_danych') as numer_lokalu from adresy 

select * from adresy 

select * from ZAMOWIENIA z 
select * from ZAMOW_PRODUKT zp 
select * from PRODUKTY p 
select * from platnosci


insert into ZAMOWIENIA (id, ID_ADRES, WARTOSC, [DATA], ID_TYP_DOSTAWY, ID_PLATNOSCI, UZYTKOWNIK_ID, NUMER_ZAMOWIENIA)
values (3, 3, 24, getdate()-3, 2, 2, 3, 3)



insert into ZAMOWIENIA (id, WARTOSC, [DATA], ID_TYP_DOSTAWY, ID_ADRES)
values (3, 24, getdate()-3, 2, 3)



select 3, 3, 24, getdate()-3, 2, 2, 3, 3



insert into ZAMOW_PRODUKT (id, ID_ZAMOWIENIE, ID_PRODUKT, ILOSC)
values (8, 3, 5, 1),
	   (9, 3, 3, 4),
	   (10, 3, 7, 1)

select * from TYP_DOSTAWY td 

insert into TYP_DOSTAWY (id, WARTOSC)
values (5, 'paczkomat')

select * from ZAMOW_PRODUKT zp where ID_ZAMOWIENIE = 2

insert into ZAMOW_PRODUKT (id, ID_ZAMOWIENIE, ID_PRODUKT, ILOSC)
values (4,2	4,3),
		(5,2,2,1),
		(6,	2,	1,	1),
		(7,	2,	9,	1)



DROP trigger IF EXISTS dbo.insert_do_zamowienia
DROP trigger IF EXISTS dbo.insert_do_zamow_produkt
DROP trigger IF EXISTS dbo.insert_do_uzytkownik
DROP trigger IF EXISTS dbo.insert_do_platnosci
DROP trigger IF EXISTS dbo.insert_do_produkty
DROP trigger IF EXISTS dbo.insert_do_adresy

select * from PRODUKTY p 


select * from ZAMOW_PRODUKT zp 




select * from ZAMOWIENIA z 

update ZAMOWIENIA set NUMER_ZAMOWIENIA = 3 
where id = 3





select sum(p.cena_jednostkowa * zp.ilosc) as cena_wynikowa,
	   zp.id_zamowienie

	   
--Podzapytanie CTE czyli Common Table Expression 
 with podsuma as
(select 
p.cena_jednostkowa * zp.ilosc as suma,
zp.ID_ZAMOWIENIE 
from PRODUKTY p 
join ZAMOW_PRODUKT zp on zp.ID_PRODUKT  = p.id)
SELECT sum(suma) over (partition by ID_ZAMOWIENIE) 
from podsuma 

from produkty p
join ZAMOW_PRODUKT zp on zp.ID_PRODUKT = p.id
group by zp.id_zamowienie


--Podzapytanie CTE czyli Common Table Expression 
with podsuma as
(select 
p.cena_jednostkowa * zp.ilosc as suma,
zp.ID_ZAMOWIENIE 
from PRODUKTY p 
join ZAMOW_PRODUKT zp on zp.ID_PRODUKT  = p.id)
SELECT sum(suma) over (partition by ID_ZAMOWIENIE) 
from podsuma 


select z.id from ZAMOWIENIA z
where z.ID_PLATNOSCI not in (SELECT id from PLATNOSCI p2)

select z.id from ZAMOWIENIA z
where z.ID_PLATNOSCI in (SELECT id from PLATNOSCI p2)


select sum(p.cena_jednostkowa * zp.ilosc) as suma, 
		zp.id_zamowienie,
		z.ID_PLATNOSCI,
		z.[DATA] 
		from PRODUKTY p 
		join ZAMOW_PRODUKT zp on p.id = zp.ID_PRODUKT
		join ZAMOWIENIA z on zp.ID_ZAMOWIENIE  = z.ID 
		WHERE z.[DATA] between GETDATE() - 30 and  GETDATE() 
		group by zp.ID_ZAMOWIENIE,
		z.ID_PLATNOSCI,
		z.[DATA] 
		
select * from PLATNOSCI p 
		
insert into platnosci(id, typ, WARTOSC, POSREDNIK, data)
values (3, 'przelew', 11.39, 'eService Polska', getdate())
		
--SELECT sum(p.cena_jednostkowa * zp.ilosc),
--	   zp.id_zamowienie 
--from select zp.ID_ZAMOWIENIE 
--from PRODUKTY p 
--join ZAMOW_PRODUKT zp on zp.ID_PRODUKT  = p.id

select * from ZAMOWIENIA z2 

update ZAMOWIENIA set ID_PLATNOSCI  = 3 where id = 3


select z.id, z.numer_zamowienia,
p.[DATA] as data_zaplaty,
p.TYP,
p.POSREDNIK 
from ZAMOWIENIA z 
join PLATNOSCI p on p.ID  = z.ID_PLATNOSCI 
where
p.[DATA] BETWEEN DATEADD(dd,-(DAY(getdate())-1), getdate()) and EOMONTH(GETDATE()) 





select z.id, z.numer_zamowienia, p.[data], p.typ, p.posrednik from zamowienia z join platnosci p on p.id = z.ID_PLATNOSCI where datepart(mm,p.[data]) = datepart(mm,getdate())
