drop table if exists movies;
drop table if exists directors;

CREATE TABLE if not exists movies (
   movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(120),
   year_released INTEGER,
   director VARCHAR(80)
);

CREATE TABLE if not exists directors (
   director_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(40),
   last_name VARCHAR(40),
   country VARCHAR(80)
);

drop table movies;

CREATE TABLE movies (
   movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(120),
   year_released INTEGER,
   director_id INTEGER,
   FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

-- in order to have data in tables, run movie-buff-data.sql

select title
	from movies;
    
select title, year_released
	from movies
    order by year_released desc;
    
select *
	from directors 
    order by country asc;
    
select *
	from directors 
    order by country asc, last_name;
    
insert into directors (first_name, last_name, country)
	values
		("Rob", "Reiner", "USA");
        
select * 
	from directors
		where last_name = "Reiner";
        
insert into movies (title, year_released, director_id)
	values
		("The Princess Bride", 1987, 11);
        
select m.title, m.year_released, d.last_name
	from movies as m
    inner join directors as d on d.director_id = m.director_id;
    
select m.title, d.first_name, d.last_name
	from movies as m
    inner join directors as d on d.director_id = m.director_id
    order by d.last_name;
    
select m.title, d.first_name, d.last_name
	from movies as m
    inner join directors as d on d.director_id = m.director_id
    where m.title = "The Incredibles";
    
select m.title, d.last_name, d.country
	from movies as m
    inner join directors as d on d.director_id = m.director_id
    where m.title = "Roma";
    
delete from movies
	where movie_id = 4;
    
select m.*, d.*
	from movies as m
    inner join directors as d on d.director_id = m.director_id;
    
delete from directors
	where director_id = 2;