use car ;

--- Read Data ---
select * from  car_dekho;

--- Total Car Available ---
select count(*) from car_dekho;

---  How many Cars available in 2023? ---
select count(*) from car_dekho where year = 2023;

---  How many Cars available in 2020 2021 2022 ---
select year, count(*) from car_dekho where year in ( 2020, 2021 , 2022 ) group by year ;
 
--- Client asked  me to print the total of all cars by year . I dont see the all the details ---
select year, count(*) from car_dekho group by year order by year;

--- Client aksed to car delear agent how many Disel car will there be in 2020 ? ---
select year, count(*) from car_dekho where year = 2020 and fuel = "Diesel";

---  The manger told the employee to give a print all the fule cars by all year ---
select year, fuel ,count(*) from car_dekho where fuel in ( "Diesel" , "Petrol" , "CNG") group by year,fuel order by year;

--- Manager said there were more than 100 cars in a give year which year had more than 100 cars ?
 select year , count(*) from  car_dekho group by year having count(*)>100;

---- Manager said to the employee all car details sold between 2022 and 2023 ---
select * from car_dekho where year between 2022 and 2023 order by year;

