select 100 * 1.22 
select 60 * 1.23
select 60 * 1.035


exec Imie_z_bazy 'Jolanta' 

select * from ADRESY a 

create procedure zwieksz_cene
@zmienna int 
as 
begin
update tabela_zamowien set wartosc = wartosc * @zmienna  
end 


exec zwieksz_cene 3


alter procedure zwieksz_cene2
as 
begin
update tabela_zamowien set wartosc = wartosc * 1.33 
end 



exec zwieksz_cene2 

select * from tabela_zamowien tz 



exec tworz_tabele 

select distinct(wartosc), id, id_adres, data from tabela_zamowien tz 

select id, [data], id_adres, id_platnosci, id_typ_dostawy, uzytkownik_id, numer_zamowienia, wartosc, count(wartosc) 
FROM tabela_zamowien tz  
group by id, [data], id_adres, id_platnosci, id_typ_dostawy, uzytkownik_id, numer_zamowienia, wartosc 
having count(wartosc) > 1 


alter PROCEDURE delete_from_tabela_zamowien
as 
begin
delete from tabela_zamowien 
where id in (
		select id 
		FROM tabela_zamowien tz  
		group by id 
		having count(id) > 1)

end

select * from tabela_zamowien tz 

exec delete_from_tabela_zamowien 


select * from ZAMOW_PRODUKT zp 
select * from ZAMOWIENIA z 
select * from ADRESY a 
select * from PLATNOSCI p 


create PROCEDURE  zamow_prod
@id int, 
@id_adres int, 
@wartosc int, 
@data date,
@id_typ_dostawy int, 
@id_platnosci int, 
@uzytkownik_id int, 
@numer_zamowienia int 
as 
begin 
	insert into ZAMOWIENIA(id, ID_ADRES, WARTOSC, [DATA], ID_PLATNOSCI, id_typ_dostawy, UZYTKOWNIK_ID, NUMER_ZAMOWIENIA)  
	values (@id, @id_adres, @wartosc, @data, @id_platnosci, @id_typ_dostawy, @uzytkownik_id, @numer_zamowienia) 
end


exec zamow_prod 4, 5, 55, getdate(), 2, 4, 7, 4





















