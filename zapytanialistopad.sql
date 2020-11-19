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

