-- drop table if exists Edges;

-- create table Edges(Source int,Destination int);

-- insert into Edges values (10,5);
-- insert into Edges values (4,25);
-- insert into Edges values (1,3);
-- insert into Edges values (4, 4);

-- select * from Edges;
-- select Source from Edges;
-- select * from Edges where Source > Destination;

-- insert into Edges values ('abc','2000');
-- select * from Edges;
-- select * from Edges where Source < Destination;


-- Question 2
drop table if exists MyRestaurants;
create table MyRestaurants(rest_name varchar(20), food_type varchar(10), distance int, visit_date date, love_it boolean);

insert into MyRestaurants values ('Chipotle', 'Mexican', 1, '2024-02-11', '1');
insert into MyRestaurants values ('Mcd', 'American', 4, '2023-02-11', '0');
insert into MyRestaurants values ('Chillis', 'Indian', 2, '2023-12-16', NULL);
insert into MyRestaurants values ('La fontana', 'Italian', 5, '2024-03-04', '1');
insert into MyRestaurants values ('Pike place chowder', 'PNW', 8, '2023-10-11', '1');

-- select date('2024-02-11');
-- select date('now');
-- SELECT CURRENT_DATE - INTERVAL '5 year';
-- select CURRENT_DATE - INTERVAL '5 year' + INTERVAL '24 days';
-- select case when date('now') < date('2011-12-09') then 'Taking classes' when date('now') < date('2011-12-16') then 'Exams' else 'Vacation' end;

select rest_name from MyRestaurants where distance <= 5 order by rest_name;

select rest_name from MyRestaurants where love_it = 't' and visit_date < CURRENT_DATE - INTERVAL '3 months';

update MyRestaurants set visit_date = '2024-03-04' where rest_name = 'La fontana';

alter table MyRestaurants 

select * from MyRestaurants;
