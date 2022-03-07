CREATE TABLE if not exists seeds (
   seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   crop VARCHAR(40),
   encourages VARCHAR(80),
   use_by INTEGER
);

INSERT INTO seeds (crop, encourages, use_by)
	VALUES 
	("Agastache", "bees & hummingbirds", 2020),
    ("Cucumbers", "beetles & worms", 2021)
;

INSERT INTO seeds (crop, use_by)
	VALUES 
    ("Sun Gold Tomato", 2022),
    ("Lemons", 2023),
    ("Lettuce", 2028),
    ("Sweet Potatos", 2022)
;

select * 
	from seeds;
    
select crop
	from seeds;
    
select crop, use_by
	from seeds
    order by use_by desc, crop;
    
select *
	from seeds
    where seed_id = 1;
    
update seeds
	set use_by = 2024
    where seed_id = 1;

update seeds
	set use_by = 2024, crop = "Lime"
    where seed_id = 4;
    
alter table seeds
	add column expired bool;

SET SQL_SAFE_UPDATES = 0;

update seeds
	set expired = false 
    where use_by <= 2022;
    
update seeds
	set expired = true 
    where use_by > 2022;
    
select * 
	from seeds;
    
delete from seeds
	where seed_id = 6;
    
delete from seeds
	where expired = true;