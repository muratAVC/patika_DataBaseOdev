--film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
SELECT distinct replacement_cost from film;
--film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
Select count(distinct replacement_cost) from film;
--film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT title from film where title like 'T%' and rating='G';
--country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
Select count(country) from country where length(country)=5;
SELECT country from country where length(country.country)=5;
--city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
SELECT * from city;
SELECT count(city) from city where city.city like '%r' or city like 'R';
--veya kısa yöntemi
SELECT count(city) from city WHERE city.city ilike '%r';