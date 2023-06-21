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


--ödev8


--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE table employee (
    id int PRIMARY KEY,
    name varchar (40) not null,
    birthday date not null,
    email varchar(50)
);

SELECT * from employee;
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (id, name, birthday, email) values (1, 'Myca BURWIN', '9/24/1981', 'mburwin0@123-reg.co.uk');
insert into employee (id, name, birthday, email) values (2, 'Ingmar Spurier', '3/20/1986', 'ispurier1@wp.com');
insert into employee (id, name, birthday, email) values (3, 'Meade Wehden', '11/5/1904', 'mwehden2@baidu.com');
insert into employee (id, name, birthday, email) values (4, 'Colan Robens', '9/16/1903', 'crobens3@uiuc.edu');
insert into employee (id, name, birthday, email) values (5, 'Rubin Kempster', '8/21/1962', 'rkempster4@behance.net');
insert into employee (id, name, birthday, email) values (6, 'Tuesday Fielders', '11/8/1953', 'tfielders5@google.nl');
insert into employee (id, name, birthday, email) values (7, 'Winona Faughey', '4/19/1932', 'wfaughey6@free.fr');
insert into employee (id, name, birthday, email) values (8, 'Marysa Waszkiewicz', '12/14/1919', 'mwaszkiewicz7@howstuffworks.com');
insert into employee (id, name, birthday, email) values (9, 'Andree Scolts', '1/24/1992', 'ascolts8@google.com.hk');
insert into employee (id, name, birthday, email) values (10, 'Ollie Orvis', '6/16/1906', 'oorvis9@taobao.com');
insert into employee (id, name, birthday, email) values (11, 'Aguste Trenbay', '7/3/1932', 'atrenbaya@tiny.cc');
insert into employee (id, name, birthday, email) values (12, 'Beverie Limmer', '11/14/1940', 'blimmerb@purevolume.com');
insert into employee (id, name, birthday, email) values (13, 'Archibaldo Gleder', '8/8/2004', 'aglederc@loc.gov');
insert into employee (id, name, birthday, email) values (14, 'Ariella Cazin', '5/29/1948', 'acazind@msn.com');
insert into employee (id, name, birthday, email) values (15, 'Yard Selborne', '11/9/1900', 'yselbornee@cdbaby.com');
insert into employee (id, name, birthday, email) values (16, 'Derrick Francesc', '4/17/1951', 'dfrancescf@alexa.com');
insert into employee (id, name, birthday, email) values (17, 'Sidney Izakov', '3/24/2019', 'sizakovg@seattletimes.com');
insert into employee (id, name, birthday, email) values (18, 'Hadlee Gaisford', '7/29/2007', 'hgaisfordh@earthlink.net');
insert into employee (id, name, birthday, email) values (19, 'Nicolas Rought', '5/3/2003', 'nroughti@unesco.org');
insert into employee (id, name, birthday, email) values (20, 'Gauthier Kigelman', '3/16/1910', 'gkigelmanj@springer.com');
insert into employee (id, name, birthday, email) values (21, 'Kirby Ubee', '1/5/1963', 'kubeek@hostgator.com');
insert into employee (id, name, birthday, email) values (22, 'Krystle Wybron', '6/15/2015', 'kwybronl@vimeo.com');
insert into employee (id, name, birthday, email) values (23, 'Eveline Braunes', '6/13/1983', 'ebraunesm@de.vu');
insert into employee (id, name, birthday, email) values (24, 'Budd Camillo', '2/17/1926', 'bcamillon@cmu.edu');
insert into employee (id, name, birthday, email) values (25, 'Kelcey Cockerell', '4/20/1987', 'kcockerello@cornell.edu');
insert into employee (id, name, birthday, email) values (26, 'Anjela Keneleyside', '1/31/1918', 'akeneleysidep@nymag.com');
insert into employee (id, name, birthday, email) values (27, 'Gerald Crate', '12/4/2010', 'gcrateq@homestead.com');
insert into employee (id, name, birthday, email) values (28, 'Berthe Jacqueminot', '11/7/1961', 'bjacqueminotr@usgs.gov');
insert into employee (id, name, birthday, email) values (29, 'Ameline Crippill', '7/29/1916', 'acrippills@naver.com');
insert into employee (id, name, birthday, email) values (30, 'Adelaide Stripp', '1/30/1938', 'astrippt@twitter.com');
insert into employee (id, name, birthday, email) values (31, 'Binky McCambrois', '1/8/1927', 'bmccambroisu@examiner.com');
insert into employee (id, name, birthday, email) values (32, 'Rodi Banham', '2/21/2019', 'rbanhamv@ameblo.jp');
insert into employee (id, name, birthday, email) values (33, 'Bay Woodruffe', '4/20/2016', 'bwoodruffew@biglobe.ne.jp');
insert into employee (id, name, birthday, email) values (34, 'Retha Blackbrough', '12/11/2003', 'rblackbroughx@boston.com');
insert into employee (id, name, birthday, email) values (35, 'Bonnibelle Habbijam', '7/20/2012', 'bhabbijamy@hostgator.com');
insert into employee (id, name, birthday, email) values (36, 'Jayme Badman', '7/27/2012', 'jbadmanz@google.de');
insert into employee (id, name, birthday, email) values (37, 'Candida Cardew', '7/12/1974', 'ccardew10@google.de');
insert into employee (id, name, birthday, email) values (38, 'Elisabetta Rickersey', '7/19/2014', 'erickersey11@dell.com');
insert into employee (id, name, birthday, email) values (39, 'Jacinda Trenbey', '9/17/1939', 'jtrenbey12@bigcartel.com');
insert into employee (id, name, birthday, email) values (40, 'Winfred Rowlstone', '1/28/2015', 'wrowlstone13@ucoz.com');
insert into employee (id, name, birthday, email) values (41, 'Deanne Base', '11/14/2007', 'dbase14@msu.edu');
insert into employee (id, name, birthday, email) values (42, 'Birch Crannell', '6/17/1969', 'bcrannell15@nytimes.com');
insert into employee (id, name, birthday, email) values (43, 'Merrile Fenty', '12/31/1923', 'mfenty16@shinystat.com');
insert into employee (id, name, birthday, email) values (44, 'Shel Jeeves', '9/8/1935', 'sjeeves17@tmall.com');
insert into employee (id, name, birthday, email) values (45, 'Thomasine Sonier', '9/25/1948', 'tsonier18@salon.com');
insert into employee (id, name, birthday, email) values (46, 'Terrijo Maruska', '2/12/1982', 'tmaruska19@cmu.edu');
insert into employee (id, name, birthday, email) values (47, 'Lothario Closs', '1/2/1905', 'lcloss1a@networkadvertising.org');
insert into employee (id, name, birthday, email) values (48, 'Glenn McCarty', '8/14/1936', 'gmccarty1b@prnewswire.com');
insert into employee (id, name, birthday, email) values (49, 'Saidee Gullam', '7/31/2012', 'sgullam1c@ow.ly');
insert into employee (id, name, birthday, email) values (50, 'Margery Hanssmann', '8/8/1948', 'mhanssmann1d@hp.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

update employee set
       name='murat',
       email='murat@mail.com'
where id=1;
update employee set
                    name='Selim',
                    email='selim@mail.com'
where id=23;
update employee set
                    name='asdfg',
                    email='esra@mail.com'
where id=43;
update employee set
                    name='sude',
                    email='sude@mail.com'
where id=15;
update employee set
                    name='ahmet',
                    email='ahnet@mail.com'
where id=71;

SELECT *from employee;


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE from employee where id=10;
DELETE from employee where id=20;
DELETE from employee where id=40;
DELETE from employee where id=50;
DELETE from employee where id=60;

SELECT * from employee;
--------------------------------------------------------------------------------------------

--ödev 9
--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT a.city,c.country from city a inner join country c on a.country_id = c.country_id;
--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT p.payment_id,c.first_name,c.last_name from customer c inner join payment p on c.customer_id = p.customer_id;
--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT r.rental_id,c.first_name,c.last_name from customer c inner join rental r on c.customer_id = r.customer_id;

---------------------------------------------------------------

--ödev 10
--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT c.country,a.city from city a left join country c on a.country_id = c.country_id;
--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
SELECT p.payment_id,c.first_name,c.last_name from customer c right join payment p on c.customer_id = p.customer_id;
--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT r.rental_id,c.first_name,c.last_name from customer c full join rental r on c.customer_id = r.customer_id;
