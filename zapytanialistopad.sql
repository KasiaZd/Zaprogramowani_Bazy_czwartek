select u.nazwa, u.id, a.imie, a.nazwisko, a.uzytkownik_id
from sklep.dbo.UZYTKOWNIK u
join ADRESY a on a.uzytkownik_id = u.ID 


select u.nazwa, u.id, 
z.id, z.wartosc, z.data
from UZYTKOWNIK u
join adresy a on u.id = a.uzytkownik_id 
join ZAMOWIENIA z on a.id = z.ID_ADRES 

select u.nazwa, u.id as uzytkownik_id,
z.id as zamowienie_id, z.wartosc, z.data
from UZYTKOWNIK u 
join ZAMOWIENIA z on z.UZYTKOWNIK_ID  = u.ID 


alter table ZAMOWIENIA add UZYTKOWNIK_ID INT
alter table ZAMOWIENIA add NUMER_ZAMOWIENIA INT NOT NULL DEFAULT 1 WITH VALUES


UPDATE ZAMOWIENIA  SET UZYTKOWNIK_ID = 4 WHERE ID = 1



SELECT * FROM ZAMOWIENIA z 



select u.nazwa, u.id as uzytkownik_id,
z.id as zamowienie_id, z.wartosc, z.data
from UZYTKOWNIK u 
left join ZAMOWIENIA z on z.UZYTKOWNIK_ID  = u.ID 


select u.nazwa, u.id as uzytkownik_id,
z.id as zamowienie_id, z.wartosc, z.data
from  ZAMOWIENIA z
right join UZYTKOWNIK u  on z.UZYTKOWNIK_ID  = u.ID 


select u.nazwa, u.id as uzytkownik_id,
a.imie, a.nazwisko, a.miasto, a.ulica
from UZYTKOWNIK u
inner join adresy a on a.uzytkownik_id  = u.id


select u.nazwa, u.id as uzytkownik_id,
a.imie, a.nazwisko, a.miasto, a.ulica
from UZYTKOWNIK u
left join adresy a on a.uzytkownik_id  = u.id


select u.nazwa, u.id as uzytkownik_id,
a.imie, a.nazwisko, a.miasto, a.ulica
from UZYTKOWNIK u
left join adresy a on a.uzytkownik_id  = u.id
where u.id != 4 and a.MIASTO like 'Torun'

select u.nazwa, u.id as uzytkownik_id,
a.imie, a.nazwisko, a.miasto, a.ulica
from UZYTKOWNIK u
left join adresy a on a.uzytkownik_id  = u.id
where u.id != 4 or a.MIASTO like 'Torun'


select u.nazwa, u.id as uzytkownik_id,
a.imie, a.nazwisko, a.miasto, a.ulica
from UZYTKOWNIK u
left join adresy a on a.uzytkownik_id  = u.id
where u.id = 2 and a.MIASTO is null


select u.nazwa, u.id as uzytkownik_id,
a.imie, a.nazwisko, a.miasto, a.ulica
from UZYTKOWNIK u
left join adresy a on a.uzytkownik_id  = u.id
where u.id = 2 or a.MIASTO is not null

select * from PRODUKTY p 



select p.id as produkt_id, p.nazwa, p.CENA_JEDNOSTKOWA,
zp.id_produkt
from PRODUKTY p 
join ZAMOW_PRODUKT zp on zp.ID_PRODUKT = p.ID 
where p.NAZWA like 's%' or p.NAZWA like '%j%'
or p.NAZWA like '%e'




select p.id as produkt_id, p.nazwa, p.CENA_JEDNOSTKOWA,
zp.id_produkt
from PRODUKTY p 
join ZAMOW_PRODUKT zp on zp.ID_PRODUKT = p.ID 
where p.NAZWA like '%rancze' or p.nazwa like '%le%'


select * from PRODUKTY p 
where nazwa like '%na%'


select top(20) nazwa, len(nazwa), lower(nazwa), upper(nazwa), concat(space(20), nazwa, space(20)), concat('Ala ma kota ', nazwa, ' Kot to Lusia')  
from PRODUKTY p 




select pi() as PI, 
	   abs('-24') as wartosc_bezwzglendna, 
	   SQRT(25) as pierwiastek_kwadratowy, 
	   --cube(8) as pierwiastek_szescienny power(2,5) as potega, --- najpierw potega potem liczba 
	   round(234.466, 2) as liczba_niecalkowita, 
	   round(234.464, 2) as liczba_niecalkowita, 
	   sign(15) as signature, 
	   rand() as randomowe, 
	   sin(90) as sinus, 
	   cos(90) as cosinus, 
	   tan(90) as tangens, 
	   cot(90) as contangens, 
	   log10(10) as log_nat, 
	   log(4)as log



	   select * from PRODUKTY p 

	   
	   select id, nazwa, sku from PRODUKTY p  
	   where typ_produktu  in ('owoce') 
	   order by nazwa asc
	   
	   
	   select id, nazwa, sku from PRODUKTY p  
	   where typ_produktu  in ('owoce') 
	   order by sku desc
	   
	   select id, nazwa, sku from PRODUKTY p  
	   where typ_produktu  in ('owoce') 
	   order by sku 

	   
select id, pozycja from SLOWNIK_POZYCJI sp  
order by pozycja 

select id, pozycja from SLOWNIK_POZYCJI sp  
order by id asc

select id, pozycja from SLOWNIK_POZYCJI sp  
order by pozycja desc


select * from produkty

select avg(cena_jednostkowa) as cena, 
	   typ_produktu
	   from PRODUKTY p 
group by typ_produktu 	   


select round(avg(cena_jednostkowa),2) as cena, 
	   typ_produktu
	   from PRODUKTY p 
group by typ_produktu 	   



select * from zamowienia

select * from ZAMOW_PRODUKT zp 

select * from PLATNOSCI p 

select * from PRODUKTY p 


CREATE VIEW produkty_v AS
SELECT id, nazwa, sku, CENA_JEDNOSTKOWA 
FROM produkty
WHERE typ_produktu in ('owoce', 'warzywa');


insert into PRODUKTY  (id, NAZWA, sku, CENA_JEDNOSTKOWA, typ_produktu) values (8, 'marchew', 15, 2.30, 'warzywa'),
																	 (9, 'pietruszka', 16, 7, 'warzywa')
					
select * from adresy 
select * from UZYTKOWNIK u 
select * from SLOWNIK_POZYCJI sp 
																	 
																	 
select * from produkty_v pv 


create view adresy_uzytkown as
select a.imie, 
	   a.nazwisko, 
	   a.ulica, 
	   a.miasto, 
	   a.kod_pocztowy, 
	   a.numer_domu, 
	   a.numer_lokalu, 
	   u.nazwa,
	   sp.pozycja
	   
	   from ADRESY a  
	   join UZYTKOWNIK u on u.id = a.uzytkownik_id 
	   join SLOWNIK_POZYCJI sp on u.SLOWNIK_POZYCJI_ID  = sp.id



	   select * from adresy_uzytkown 


select getdate()



select datepart(wk, getdate()) as dzi_tyg,
	   datepart(wk, '01-01-2020') as dz_tyg,
	   datepart(ww, '01-01-2020') as dzie_tyg,
	   datepart(year, getdate()) as rok,
	   datepart(yyyy, getdate()) as rok2,
	   datepart(yy,getdate()) as rok3,
	   datepart(mm, getdate()) as miesiac,
	   datepart(month, getdate()) as miesiac2,
	   datepart(m, getdate()) as miesiac3,
	   datepart(quarter, getdate()) as kwartal,
	   datepart(qq, getdate()) as kwartal2,
	   datepart(q, getdate()) as kwartal3,
       datepart(dayofyear, getdate()) as dzien_roku,
       DATEPART(DAYOFYEAR, getdate()+28) as wigilia

       
select datepart(DAYOFYEAR, '2020-12-24') as wig,
	   datepart(dy, getdate()) as dzien_roku, 
	   datepart(y, getdate()) as dzien_roku2,
	   datepart(day, getdate()) as dzien_miesiaca, 
	   datepart(dd, getdate()) as dzien_miesiaca2, 
	   datepart(d, getdate()) as dzien_miesiaca3,
	   datepart(week, getdate()) as tydzien_roku, 
	   datepart(weekday, getdate()) as dzien_tygodnia,
	   datepart(dw, getdate()) as dzien_tygodnia2,
	   datepart(hour, getdate()) as godzina, 
	   datepart(hh, getdate()) as godzina2,
	   datepart(MINUTE, getdate()) as minuta, 
	   DATEPART(mi, getdate()) as minuta2,
	   datepart(n, getdate()) as minuta3
	   
	   
select DATEPART(ss, getdate()) as sekundy,
	   datepart(s, getdate()) as sekundy2,
	   datepart(SECOND, getdate()) as sekundy3,
	   datepart(millisecond, getdate()) as milisekundy,
	   datepart(ms, getdate()) as milisekundy2,
	   datepart(microsecond, getdate()) as mikrosekundy, 
	   datepart(mcs, getdate()) as mikrosekundy2, 
	   datepart(nanosecond, getdate()) as nanosekundy, 
	   datepart(ns, getdate()) as nanosekundy2,

	   --datepart(tz, GETDATE()) as timezone2,
	   DATEPART(iso_week, getdate()) as isoweek  
	   
	   
select day(getdate()),
	   month(getdate()),
	   year(getdate()),
	   datename(yyyy,getdate()),
	   datename(mm, getdate()),
	   datename(dd, getdate()),
	   datename(weekday, getdate()),
	   datename(dw, getdate())
	   
	   





	   