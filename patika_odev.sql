--ödev 4
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

--Ödev 5 

--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
SELECT * from film where title like '%n' order by length DESC limit 5;
--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
SELECT * from film where title like '%n' order by length ASC offset 5 limit 5;
--customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada
-- store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
SELECT * from customer where store_id=1 order by last_name DESC limit 4;



--ödev6
--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT avg(rental_rate) from film;
--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT  count(title) from film where title like 'A%';
--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT max(length) from film where rental_rate=0.99;
--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır
SELECT count(distinct replacement_cost) from film where length>150;



--ödev7 
--film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating from film group by rating;
--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda
    -- film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, count(replacement_cost) from film group by replacement_cost having count(replacement_cost)>50;
--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
SELECT store_id,count(store_id) from customer group by store_id;
-- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra
    -- en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
select country_id, count(city) from city group by country_id order by count(country_id) DESC limit 1;
