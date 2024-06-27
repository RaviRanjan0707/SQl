create schema cars ;
use cars ;

-- read data--
select *from car_dekho;

-- Total cars: To count the numbers of cars--
select count(*) from car_dekho;

-- How many cars are avaiable in 2023--
select count(*) from car_dekho 
where year = 2023;

-- how many cars are avaiable in 2020,2021,2022--
select count(*)as "year" from car_dekho 
where year in (2020,2021,2022) group by year;

-- Total of all cars by year
select year,count(*) as "No of cars " from car_dekho group by year; 

-- how many diseal cars where there in 2020--
select count as "Diesel Cars" from car_dekho where year = 2020 and fuel = "Diesel";

-- how many petrol cars where there in 2020--
select count(*) as "Petrol Cars" from car_dekho where year = 2020 and fuel = "petrol";

-- How Many cars in (petrol,diesel,CNG) by all Years --
select year,count(*) as "Petrol Cars" from car_dekho where fuel = "petrol" group by year ;
select year,count(*) as "Diesel Cars" from car_dekho where fuel = "Diesel" group by year ;
select year,count(*) as "Petrol Cars" from car_dekho where fuel = "CNG" group by year ;

-- which year had more then 100 cars--
select year,count(*) from car_dekho group by year having count(*)>100;

-- all cars count details between 2015 to 2023-- 
select count(*) from car_dekho where year between 2015 and 2023;


