select * from adresy;

select count(id) as ilosc_osob,
	case when miasto = 'Kutno'
	then 'Kutno'
	when miasto= 'Bełchatów'
	then 'Bełchatów'
	when miasto= 'Toruń'
	then 'Toruń'
	ELSE 'Osoba nie pochodząca z żadnego z  powyższych'
END 
from ADRESY  
group by miasto



1+1 = 2 
2+1 = 5
3+4 = 7


Zaprzeczenie, 
And, OR

select case when 1+3 = 4 and 2+2 = 5
then 'prawda'
else 'fałsz'
end

select case when 1+3 = 4 or 2+2 = 5
then 'prawda'
else 'fałsz'
end

select case when 1 = 4 
then 'prawda'
else 'fałsz'
end

select case when 1 != 4 
then 'prawda'
else 'fałsz'
end


--przypadek dla a - fałszu i dla b fałszu

select case when 1=4 or 1=5 
then 'prawda'
else 'fałsz'
end


select case when 1=4 and 1=5 
then 'prawda'
else 'fałsz'
end

--zaprzeczenie a
select case when 1 != 4 
then 'prawda'
else 'fałsz'
end



--przypadek dla a -prawdy i dla b fałszu
select case when 2+3 =5  or 1=5 
then 'prawda'
else 'fałsz'
end

select case when 1=1 and 1=5 
then 'prawda'
else 'fałsz'
end


--przypadek dla a fałszu a b prawdy
select case when 1=4 or 1+3 = 4 
then 'prawda'
else 'fałsz'
end

select case when 1=4 and 1+5 = 6 
then 'prawda'
else 'fałsz'
end

--oba wyrażenia prawdziwe
select case when 3+4 = 7 or 1=1 
then 'prawda'
else 'fałsz'
end

select case when 3+4 = 7 and 1=1 
then 'prawda'
else 'fałsz'
end



declare 
@licznik as int = 1;
while @licznik <= 1000
begin
	print 'Licznik: ' + cast(@licznik as varchar)
	set @licznik = @licznik+1
end


select * from adresy

--chcemy dostać imię i nazwisko a także adres w jednej kolumnie. 

select imie +' '+nazwisko +' '+ ulica +' '+miasto +' '+KOD_POCZTOWY +' '+ NUMER_DOMU +'/'NUMER_LOKALU 
from adresy 


select * from ZAMOWIENIA z 

begin 
	print 'Zamówienie zostało złożone dnia ' + select cast(data as varchar) from ZAMOWIENIA z2 
end


select cast(data as varchar) from ZAMOWIENIA z 


declare @data_zamowienia as varchar(30) = '2020-02-02',
@numer_zam as int;
begin
	set @NUMER_ZAM = 1 
	print 'Zamówienie nr ' + cast(@numer_zam as varchar) + ' zostało złożone dnia ' + @data_zamowienia 
end 











