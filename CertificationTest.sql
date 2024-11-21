select * from country
where capital = null;

/*4*/
Select Name From country 
where GovernmentForm = 'Constitutional Monarchy' 
And Continent in ('Europe','Oceania');

Select Name From country
where GovernmentForm = 'Constitutional Monarchy' 
And (Continent = 'Europe' or Continent = 'Oceania');

Select * from country where Capital is null;

select Name, Population from country limit 10;
/**/
select Name, Population from country order by Population desc limit 10;

Select Name From country where Population
>1000000 and Population <2000000;

SELECT * FROM countrylanguage WHERE Language LIKE '%ish';

select * from country;

select 5/7;